%% Validate optimization of power load and EDF length using the particle swarm optimization
clear

addpath ../data/
addpath ../
addpath ../f/
addpath ../../f/

% E = EDF(10, 'giles_ge:silicate');
E = EDF(10, 'corning_type1');
% E.plot('all')

df = 50e9;  
dlamb = df2dlamb(df);
lamb = 1522e-9:dlamb:1582e-9;
L = 14.3e6;
SMF = fiber(50e3, @(lamb) 0.18, @(lamb) 0);
SMF.gamma = 0.8e-3;
Namp = round(L/SMF.L);

% Pon = 6e-4; % for 1W pump
% Pon = 1e-4; % for 100mW pump
Pon =0.7e-4; % for < 100mW pump
Signal = Channels(lamb, Pon, 'forward');
Pump = Channels(980e-9, 65e-3, 'forward');

[~, spanAttdB] = SMF.link_attenuation(Signal.wavelength);

problem.Pon = Pon;
problem.spanAttdB = spanAttdB;
problem.df = df;
problem.Namp = Namp;
problem.step_approx = @(x) 0.5*(tanh(2*x) + 1); % Smoothing factor = 2
problem.diff_step_approx = @(x) sech(2*x).^2; % first derivative (used for computing gradient)
problem.excess_noise_correction = 1.4; % 1.2 for 980nm, 1.6 for 1480nm
problem.SwarmSize = min(200, 20*(Signal.N+1));
problem.nonlinearity = true;
S = load('../../f/GN_model_coeff_spanLengthkm=50.mat');
problem.nonlinear_coeff = S.nonlinear_coeff;
problem.nonlinear_coeff{1} = (SMF.gamma/1.4e-3)^2*problem.nonlinear_coeff{1};
problem.nonlinear_coeff{2} = (SMF.gamma/1.4e-3)^2*problem.nonlinear_coeff{2};
problem.nonlinear_coeff{3} = (SMF.gamma/1.4e-3)^2*problem.nonlinear_coeff{3};
problem.epsilon = 0.05; % From Fig. 17 of P. Poggiolini and I. Paper, �The GN Model
% of Non-Linear Propagation in Uncompensated Coherent Optical Systems,� 
% J. Lightw. Technol., vol. 30, no. 24, pp. 3857�3879, 2012.

% [Eopt_fmin, SignalOn_fmin] = optimize_power_load_and_edf_length('fminbnd', E, Pump, Signal, problem, true);
% Lopt2 = E.optimal_length(Pump, SignalOn_fmin, spanAttdB)
% GaindB = E.semi_analytical_gain(Pump, SignalOn_fmin);
% plot(Signal.wavelength*1e9, GaindB)
% drawnow

% [SEnum_fmin, SEapprox_fmin] = capacity_linear_regime(Eopt_fmin, Pump, SignalOn_fmin, spanAttdB, Namp, df)

% [Eopt_interp, SignalOn_interp] = optimize_power_load_and_edf_length('interp', E, Pump, Signal, problem, true);
% % Lopt2 = E.optimal_length(Pump, SignalOn_interp, spanAttdB)
% % GaindB = E.semi_analytical_gain(Pump, SignalOn_interp);
% % plot(Signal.wavelength*1e9, GaindB)
% % drawnow

[Eopt_pswarm, SignalOn_pswarm, exitflab, num, approx] ... 
    = optimize_power_load_and_edf_length('particle swarm', E, Pump, Signal, problem, true);

% ASEf = Channels(Signal.wavelength, 0, 'forward');
% ASEb = Channels(Signal.wavelength, 0, 'backward');
% 
% offChs = SignalOn_pswarm.P == 0;
% SignalOn_pswarm.P(offChs) = eps;
% 
% GaindB_semi_analytical = Eopt_pswarm.semi_analytical_gain(Pump, SignalOn_pswarm);
% Pase_analytical = Eopt_pswarm.analytical_ASE_PSD(Pump, SignalOn_pswarm, problem.excess_noise_correction )*df; % ASE power
% 
% [GaindB, ~, ~, Pase, sol] = Eopt_pswarm.two_level_system(Pump, SignalOn_pswarm, ASEf, ASEb, df, 150, false);
% 
% figure, hold on, box on
% hplot = plot(Signal.wavelength*1e9, GaindB, 'DisplayName', 'Numerical');
% plot(Signal.wavelength*1e9, GaindB_semi_analytical, '--', 'Color', get(hplot, 'Color'), 'DisplayName', 'Semi-analytical')
% xlabel('Wavelength (nm)')
% ylabel('Gain (dB)')
% 
% figure, hold on, box on
% hplot = plot(Signal.wavelength*1e9, Watt2dBm(Pase), 'DisplayName', 'Numerical');
% plot(Signal.wavelength*1e9, Watt2dBm(Pase_analytical), '--', 'Color', get(hplot, 'Color'), 'DisplayName', 'Analytical')
% xlabel('Wavelength (nm)')
% ylabel('ASE power (dBm)')
% 
% offChs = SignalOn_pswarm.P == eps;
% figure, hold on, box on
% hplot = plot(Signal.lnm, Watt2dBm(Pase), 'DisplayName', 'Numerical');
% plot(Signal.lnm, Watt2dBm(Pase_analytical), '--', 'Color', get(hplot, 'Color'),'DisplayName', 'Analytical')
% xlabel('Wavelength (nm)')
% ylabel('Gain (dB)')
% legend('-DynamicLegend', 'Location', 'SouthEast')