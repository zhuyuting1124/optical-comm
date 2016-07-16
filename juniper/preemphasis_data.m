%% Preemphasis 1
% up to ~ 18 GHz
fcGHz = [0.167968750000000,0.335937500000000,0.503906250000000,0.671875000000000,0.839843750000000,1.00781250000000,1.17578125000000,1.34375000000000,1.51171875000000,1.67968750000000,1.84765625000000,2.01562500000000,2.18359375000000,2.35156250000000,2.51953125000000,2.68750000000000,2.85546875000000,3.02343750000000,3.19140625000000,3.35937500000000,3.52734375000000,3.69531250000000,3.86328125000000,4.03125000000000,4.19921875000000,4.36718750000000,4.53515625000000,4.70312500000000,4.87109375000000,5.03906250000000,5.20703125000000,5.37500000000000,5.54296875000000,5.71093750000000,5.87890625000000,6.04687500000000,6.21484375000000,6.38281250000000,6.55078125000000,6.71875000000000,6.88671875000000,7.05468750000000,7.22265625000000,7.39062500000000,7.55859375000000,7.72656250000000,7.89453125000000,8.06250000000000,8.23046875000000,8.39843750000000,8.56640625000000,8.73437500000000,8.90234375000000,9.07031250000000,9.23828125000000,9.40625000000000,9.57421875000000,9.74218750000000,9.91015625000000,10.0781250000000,10.2460937500000,10.4140625000000,10.5820312500000,10.7500000000000,10.9179687500000,11.0859375000000,11.2539062500000,11.4218750000000,11.5898437500000,11.7578125000000,11.9257812500000,12.0937500000000,12.2617187500000,12.4296875000000,12.5976562500000,12.7656250000000,12.9335937500000,13.1015625000000,13.2695312500000,13.4375000000000,13.6054687500000,13.7734375000000,13.9414062500000,14.1093750000000,14.2773437500000,14.4453125000000,14.6132812500000,14.7812500000000,14.9492187500000,15.1171875000000,15.2851562500000,15.4531250000000,15.6210937500000,15.7890625000000,15.9570312500000,16.1250000000000,16.2929687500000,16.4609375000000,16.6289062500000,16.7968750000000,16.9648437500000,17.1328125000000,17.3007812500000,17.4687500000000];
Hpreemphasis1 = [10.5864882880518 + 1.49339633027114i,11.3238467118264 + 2.29355276861050i,11.8028220951656 + 3.37356459582204i,13.4884741257329 + 3.63677048916425i,13.8125257362940 + 3.50051982479883i,13.7108104807211 + 3.14475434454464i,13.6823269310383 + 3.33005669871479i,13.6591133596389 + 3.64236012655727i,13.9083402129090 + 4.31318489958790i,14.6032354312678 + 4.64278766092578i,14.7137158938755 + 5.10339031625679i,14.9161365241344 + 5.02569983956845i,15.0321794414393 + 5.17597970109845i,15.2058060061400 + 5.51890356329717i,15.4751575820516 + 6.17912816014491i,16.4121110671244 + 5.80150044496576i,16.2092695729273 + 5.86866710993493i,16.0374607511962 + 6.02359622589820i,15.9960440158535 + 5.77986603040130i,16.4003177738899 + 6.80781545636365i,16.1283207029707 + 6.58652382831100i,16.2703165217003 + 7.76418653161224i,16.4153350667516 + 7.00027587991651i,16.2285703517086 + 7.34031352726578i,16.0456041118255 + 7.64721879901575i,16.2364537523500 + 7.92854260627997i,15.0560756738284 + 8.54039699475220i,15.7916013930922 + 9.83354652829034i,16.2862225373852 + 10.2496048923805i,15.9378338720865 + 9.68862498310304i,15.8392182120140 + 10.3065085651120i,15.4687840978332 + 11.2260403393048i,16.2521943357353 + 11.7900336370651i,15.3130481875047 + 11.9993845119805i,15.6184484002480 + 13.0894802593440i,16.4955475822428 + 12.7391251419048i,15.5283212279253 + 13.3986299477863i,15.0382660132645 + 14.2742457704250i,15.3204188014811 + 14.8938084050301i,15.8771641797003 + 16.0562638653255i,16.0846117867267 + 16.1590642414807i,16.1006517381670 + 16.8209813344538i,15.7119271011055 + 17.0101710644767i,15.8914005380683 + 17.8421380022481i,16.6439554932122 + 17.6306359703165i,16.0031158052876 + 18.8343349034433i,16.9685424684213 + 18.2047171786448i,15.6665047591979 + 19.8761700570909i,16.7618651812747 + 19.8139169799925i,17.1302305275286 + 19.2144002686916i,16.6258202709591 + 19.3636082497805i,17.2618016648411 + 20.2464593304543i,16.9584068515811 + 20.7049565645220i,16.4538438584459 + 21.2027698115726i,16.6448022906617 + 23.2870654042235i,17.4733847276435 + 22.0839423901553i,17.4987453461778 + 22.7823858398055i,17.5331257717277 + 23.8625098060840i,17.8001979478053 + 22.9815466330088i,16.4943777596186 + 22.4305711161379i,17.6781129276479 + 25.4773253724281i,18.1280812847945 + 24.6914111627959i,17.6830490186802 + 24.3845925905602i,17.0447856823188 + 26.1112252206631i,18.7168634714559 + 25.0743117458882i,18.1596637356808 + 24.0779441821512i,17.0844702552517 + 27.6726154135683i,19.2645921931017 + 26.8306160883738i,19.2822938793136 + 27.5895970295330i,17.7666571368893 + 29.1480426871921i,18.3571359533130 + 26.5337138067199i,18.5832436958300 + 26.8135157299208i,15.7693742724854 + 28.6764219290472i,15.7124493121909 + 30.9854870515438i,15.4780593196902 + 30.0157350993488i,15.8893419470191 + 30.4599295624008i,16.1004239815927 + 31.7369027450398i,15.8768502604975 + 30.7905418873020i,13.9703090547998 + 32.0742545359881i,14.4520355550102 + 32.8430726528383i,14.4884522126022 + 32.9421343309202i,12.2290758111782 + 32.0487761250664i,10.8875762392570 + 34.2225738819018i,9.43490354701796 + 34.0527683572984i,6.87373912680067 + 34.4104005302000i,8.97224433106973 + 36.2039643407443i,5.31482449375369 + 36.1037808041328i,2.65263324079681 + 37.2514680393148i,2.16861556692370 + 39.7930538492576i,-0.812006395366996 + 38.5718979409061i,-3.50230242117191 + 40.9516177055554i,-4.82950518849645 + 40.9330311033424i,-4.78603485556681 + 41.0012080704565i,-7.27161562673659 + 41.5260466733111i,-9.50686398862735 + 42.1846351920549i,-11.7995845853796 + 41.4772329446245i,-12.6617498321148 + 43.3379990804847i,-15.1214078516367 + 42.6332536282323i,-15.3079634985599 + 42.8232904163001i,-18.2310987898760 + 43.3659121822454i,-24.1136429669932 + 39.7203354739368i,-23.7221444671474 + 40.8033162931917i,-26.4940930570592 + 44.2185819529173i,-27.8416963990219 + 41.7152051470882i];
Hpreemphasis2 = [2.73106654609644,2.85886868536201,3.05822737511419,3.46038180074983,3.46708706170941,3.52598474992524,3.49189589012096,3.53495445473579,3.56093541169890,3.64674695636431,3.73077622298887,3.74192699778840,3.86218247812435,3.93338482249054,4.11196688035485,4.23513686587625,4.45635036574061,4.23804751095611,4.38253865161181,4.11587421825603,4.54688299115558,4.23160758186788,4.36085040842625,4.58151819020844,4.39460926144724,4.45301480552868,4.18241390111016,4.41195821039056,4.65168970424071,4.65613453610526,4.47319925903857,4.39361170709457,4.88490866627688,4.68748608946388,4.98656437279577,4.85419692124548,4.89934584002275,5.15029922367776,5.27758814988422,5.19879087309623,5.11233213367968,5.34096914696413,5.56288152056150,5.66127691865576,5.69480986718812,5.56712175308027,5.77085129300582,6.01632108613293,6.40878354306794,6.16351664937764,5.97142157589750,6.16366330915362,6.23454707061600,6.50979989914742,6.29496281549612,6.64072417193894,6.85327129463490,6.78132340776269,6.91636006446131,6.91804745819621,6.72148458789709,6.92314200726573,7.31867356138867,6.89890241991910,6.90792921169589,7.45329221563481,7.27205928983376,7.26808516047102,7.37357110132786,7.36147887386745,7.77250380906938,7.50653510639227,7.43003537861776,7.99143857756046,8.23350730195373,7.48900724723583,7.61197200921973,7.76987868810254,7.73481687912185,8.00322335844356,8.32122975621097,7.96270686018318,8.09401309376292,7.70464749600986,8.25324900800601,7.79099653221476,8.02460792223691,8.75837648136676,8.51545264105654,8.34256683150353,8.02450702511843,8.82745603936225,9.11317533655492,8.65064935916800,8.64318196573915,9.15526799073268,9.44123229287533,9.22717184975231,9.30919408529858,9.54258826736348,10.3517858244214,9.74454768036903,9.76826355234945,11.0196055277993];


Hpreemphasis1 = abs(Hpreemphasis1);
Hpreemphasis1 = Hpreemphasis1/Hpreemphasis1(1);

Hpreemphasis2 = Hpreemphasis2/Hpreemphasis2(1);
 
% fit1 = fit(fcGHz, Hpreemphasis2, 'poly2')

%% Preemphasis 2
% up to ~ 35 GHz
fcGHz3 = [0.335937500000000,0.671875000000000,1.00781250000000,1.34375000000000,1.67968750000000,2.01562500000000,2.35156250000000,2.68750000000000,3.02343750000000,3.35937500000000,3.69531250000000,4.03125000000000,4.36718750000000,4.70312500000000,5.03906250000000,5.37500000000000,5.71093750000000,6.04687500000000,6.38281250000000,6.71875000000000,7.05468750000000,7.39062500000000,7.72656250000000,8.06250000000000,8.39843750000000,8.73437500000000,9.07031250000000,9.40625000000000,9.74218750000000,10.0781250000000,10.4140625000000,10.7500000000000,11.0859375000000,11.4218750000000,11.7578125000000,12.0937500000000,12.4296875000000,12.7656250000000,13.1015625000000,13.4375000000000,13.7734375000000,14.1093750000000,14.4453125000000,14.7812500000000,15.1171875000000,15.4531250000000,15.7890625000000,16.1250000000000,16.4609375000000,16.7968750000000,17.1328125000000,17.4687500000000,17.8046875000000,18.1406250000000,18.4765625000000,18.8125000000000,19.1484375000000,19.4843750000000,19.8203125000000,20.1562500000000,20.4921875000000,20.8281250000000,21.1640625000000,21.5000000000000,21.8359375000000,22.1718750000000,22.5078125000000,22.8437500000000,23.1796875000000,23.5156250000000,23.8515625000000,24.1875000000000,24.5234375000000,24.8593750000000,25.1953125000000,25.5312500000000,25.8671875000000,26.2031250000000,26.5390625000000,26.8750000000000,27.2109375000000,27.5468750000000,27.8828125000000,28.2187500000000,28.5546875000000,28.8906250000000,29.2265625000000,29.5625000000000,29.8984375000000,30.2343750000000,30.5703125000000,30.9062500000000,31.2421875000000,31.5781250000000,31.9140625000000,32.2500000000000,32.5859375000000,32.9218750000000,33.2578125000000,33.5937500000000,33.9296875000000,34.2656250000000,34.6015625000000,34.9375000000000];
Hpreemphasis3 = [2.93065570568365,3.42239193838029,3.55269081451834,3.63753017795263,3.89310983285984,3.92466728476242,4.07252504177783,4.39398617341961,4.28282935990344,4.36192826248288,4.53538273640133,4.55203437664322,4.48551381030442,4.60759536673696,4.80578771812325,4.85276469273365,4.90174854426737,5.33272659510497,5.40692882755031,5.44371891815008,5.72140430565517,5.83933303437081,6.20566809964575,6.22366666744834,6.31080365997461,6.62993598201363,6.88166060389448,7.26920282067339,7.29500041108794,6.97687596523419,7.56584357784497,7.83212279881367,7.69136382367729,7.86613480200489,7.92481623436785,8.04185577388087,8.34090681820092,8.14087396262934,8.56213639545615,8.49655106917213,8.66945815105360,8.33481454065747,8.97814834801801,9.05586505812139,9.35126420113916,9.73659511926531,9.92187634959583,10.2491964966101,10.3161941455176,10.8677877956914,11.7115184290188,12.0536027037696,11.7017031076109,11.9254554628267,11.8003417266892,11.9833499203078,12.5476272775020,12.6943510433722,12.2584329343516,12.5807966149922,13.9831728314429,14.0479873589832,13.9516147124399,9.25716023474548,14.8236292642031,14.7010578242915,16.1418318079796,15.2387632319795,16.2304230549604,16.5444068023687,15.6496141646946,16.1083457807486,16.7868684162147,16.6798778896637,17.4473427782387,16.9800129024444,18.0005644557717,18.5560160868150,18.4346393561030,19.5969034256404,20.5883247271730,20.3814795027208,20.8742584378730,20.0721795301398,19.9895613455129,20.8791893855728,20.1685796006178,19.6883282279300,17.8429792939086,19.1494681927001,19.6826706566126,19.3647833569080,18.9561557740204,18.4800311511831,17.8062633306356,17.6121185439293,19.8163536993246,22.9440137279781,26.9168170953250,36.9775013501200,43.1613489818862,50.5368339847588,49.9110112655166,58.1916224750163];

Hpreemphasis3 = Hpreemphasis3/Hpreemphasis3(1);

fit3 = [-0.0013 0.5846 1.5859];

Hpreemph = 10.^(polyval([-0.0013 0.5846 1.5859], fcGHz3)/20);

figure, hold on
plot(fcGHz, 20*log10(Hpreemphasis1), 'o', fcGHz, 20*log10(Hpreemphasis2), 'o') 
% plot(fcGHz, fit1(fcGHz));

figure, hold on
plot(fcGHz, 20*log10(Hpreemphasis2), 'o', fcGHz3, 20*log10(Hpreemphasis3), 'o') 
plot(fcGHz3, 20*log10(Hpreemph));
