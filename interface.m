%% The part where to put variables in (Change variables here)

% Taunono and tauno are constants; change if nonoate type changes
% We're considering mass here
% Bolus is the initial amount of the NONOate in the soultion
taunono = 4471; 
tauno = 641;
bolus = 500;
% I thought this should be 0 by default, can be changed though

initno = 0;
% Volume of the Solution You're Considering
V = 1;
% Time at which you want to know the concentration in seconds
t = 1000;

%% Part that does the math and plots (run to get values and plot)

Vno = bolus * (1 - exp(1)^(-t/tauno)*exp(1)^(-t/taunono))*exp(1)^(-t/taunono)/V;

figure;
tv = linspace(0, 10000, 1000);
Vol = bolus * (1 - exp(1).^(-tv/tauno).*exp(1).^(-tv/taunono)).*exp(1).^(-tv/taunono)/V;
plot(tv, Vol);
hold on;
plot(t, Vno, 'r+')
title('NO concentration as a function of time')
xlabel('Time in seconds')
ylabel('')

