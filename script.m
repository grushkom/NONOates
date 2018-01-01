%% Mikhail Grushko - Diazeniumdiolate ions concentration Modeling script

%% Cleanup

clearvars;
close all;
clc;

%% Diazeniumdiolate ion 2 pH vs Dissaciation constant data

figure;
pH2 = [8.00, 7.8, 7.56, 7.40, 6.95, 6.55, 6.48, 6.20, 6.07, 5.81, 5.64, 5.45, 5.16];
kobs2 = [0.00215, 0.00345, 0.00438, 0.00585, 0.0127, 0.0281, 0.0367, 0.0711, 0.0972, 0.152, 0.2, 0.32, 0.568];
plot(pH2, kobs2, 'r+');
title('Diazeniumdiolate ion 2 pH vs Dissaciation constant k_{obs}');
xlabel('pH')
ylabel('k_{obs}')

hold on;

%% Diazeniumdiolate ion 3 pH vs Dissaciation constant data

figure;
pH3 = [12, 10, 8, 7.82, 7.56, 7.42, 6.95, 6.55];
kobs3 = [8.2*10^(-7), 0.000810, 0.00483, 0.00661, 0.0105, 0.0167, 0.0397, 0.0944];
plot(pH3, kobs3, 'g+');
title('Diazeniumdiolate ion 3 pH vs Dissaciation constant k_{obs}');
xlabel('pH')
ylabel('k_{obs}')

%% Diazeniumdiolate ion 4 pH vs Dissaciation constant data

figure;
pH4 = [8.5, 8.04, 7.8, 7.56, 7.4, 6.95, 6.55, 6.19, 6.07, 5.81, 5.64, 5.62, 5.43, 5.16];
kobs4 = [0.00114, 0.00152, 0.00172, 0.0019, 0.00258, 0.00285, 0.00489, 0.00763, 0.00706, 0.0120, 0.0134, 0.0164, 0.0232, 0.0341];
plot(pH4, kobs4, 'b+');
title('Diazeniumdiolate ion 4 pH vs Dissaciation constant k_{obs}');
xlabel('pH')
ylabel('k_{obs}')

%% Data Overlay

figure;
plot(pH2, kobs2, 'r');
hold on;
plot(pH3, kobs3, 'g');
plot(pH4, kobs4, 'b');

%% Diazeniumdiolate ion 6 pH vs Dissaciation constant data

figure;
pH6 = [7.46, 7.24, 7.08, 6.80, 6.31, 6.08, 5.88, 5.04, 4.50, 4.47, 3.85, 3.44, 3.43, 3.30, 3.17, 2.99, 2.81, 2.56, 2.42, 2.04];
kobs6 = [7.98*10^(-6), 1.42*10^(-5), 1.87*10^(-5), 3.17*10^(-5), 7.43*10^(-5), 1.03*10^(-4), 1.63*10^(-4), 6.31*10^(-4), 2.06*10^(-3), 2.37*10^(-3), 5.828*10^(-3), 9.72*10^(-3), 0.0119, 0.0152, 0.0146, 0.0140, 0.0245, 0.0222, 0.0264, 0.0295];
halflife = [24.1, 13.6, 10.3, 6.1, 2.6, 1.9, 1.2, 0.305, 0.0933, 0.0816, 0.0333, 0.02, 0.0161, 0.0127, 0.0130, 0.0138, 0.0077, 0.0086, 0.0072, 0.0066];
plot(pH6, kobs6, 'b+');
title('Diazeniumdiolate ion 6 pH vs Dissaciation constant k_{obs}');
xlabel('pH')
ylabel('k_{obs}')
figure;
plot(pH6, halflife, 'b+');
title('Diazeniumdiolate ion 4 pH vs Half-Life');
xlabel('pH')
ylabel('k_{obs}')
hold on;
f = fit(pH6(:), halflife(:),'exp1')
plot(f);
title('Diazeniumdiolate ion 4 pH vs Half-Life');
xlabel('pH')
ylabel('k_{obs}')

%% Model Fitting 
