function c = consumption(v)
% c = consumption(v)
% Input: En hastighet. Output: Elkonsumtionen för hastigheten.
% Görs med minstakvadratmetoden då datan är diskret.
load('roadster.mat', 'speed_kmph', 'consumption_Whpkm')

speed_t = speed_kmph'; % Transponera hastighetsdatan
b = consumption_Whpkm'; % Transponera konsumtionsdatan

A = [speed_t.^(-1) ones(size(speed_t)) speed_t speed_t.^2]; % Ta fram koefficientmatrisen
p = (A'*A)\(A'*b); % Få fram konstanterna enligt AT*A*x=AT*b

% Beräkna funktionsvärdena
c = p(1)*v.^(-1) + p(2) + p(3)*v + p(4)*v.^2;

% plot(speed_t, b, 'o') % Plot punkterna
% hold on
% plot(v, c, '--'); % Plot deras data
% hold off
end