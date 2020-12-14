function v = E_to_speed(E, v0)
% v = E_to_speed(E, v0)
% Input: Elförbrukning, startgissning för v. Output: v för givet E.

% Minstakvadratmetoden
load('roadster.mat', 'speed_kmph', 'consumption_Whpkm')
speed_t = speed_kmph'; % Transponera hastighetsdatan
b = consumption_Whpkm'; % Transponera konsumtionsdatan
A = [speed_t.^(-1) ones(size(speed_t)) speed_t speed_t.^2]; % Ta fram koefficientmatrisen
p = (A'*A)\(A'*b); % Få fram konstanterna enligt AT*A*x=AT*b

% Funktionen på nollform
f = @(v) p(1)*v.^(-1) + p(2) + p(3)*v + p(4)*v.^2 - E;
% f(v0)
% fplot(f,[1 200])

% Implementera Newton-Raphson
fDer = @(v) -p(1)*v.^(-2) + p(3) + 2*p(4)*v; % Derivatan med respekt till v
tol = 5*1e-3;
xPrev = v0; % startgissning
x = -100; % bara något som gör det säkert att vi har en iteration
i = 0;
while (abs(x-xPrev) > tol)
    if i > 0
        xPrev = x;
    end
    x = xPrev - f(xPrev)./fDer(xPrev);
    i = i+1;
    if (i > 100) % just in case om det blir galet
        disp("Det sket sig")
        break
    end
end
v = x; 