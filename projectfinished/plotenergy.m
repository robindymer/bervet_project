% Script som ritar elkonsumtion som funktion av hastigheten
% och hastigheten som funktion av sträckan.

load('roadster.mat');
% fprintf(readme)
tiledlayout(3, 1)

% Top plot c(v)
nexttile
plot(speed_kmph, consumption_Whpkm, 'r')
title('Energiförbrukning som funktion av hastigheten')
xlabel('v (km/h)')
ylabel('c (Wh/km')

load('speed_anna.mat');
% Middle plot v(s)
nexttile
plot(distance_km, speed_kmph, 'g')
title('Hastighet som funktion av sträcka (Anna)')
xlabel('s (km)')
ylabel('v (km/h)')

load('speed_elsa.mat');
% Bottom plot v(s)
nexttile
plot(distance_km, speed_kmph, 'g')
title('Hastighet som funktion av sträcka (Elsa)')
xlabel('s (km)')
ylabel('v (km/h)')