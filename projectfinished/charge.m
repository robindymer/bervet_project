function Xcharge = charge(C, route, x0, n)
% Hur länge räcker laddningen C längs en viss rutt?
% Dvs beräkna vid vilken position x som E(x) = C

% Skriv på nollform
f = @(x) tot_consumption(x, route, n) - C;
% Newton-Raphson
fDer = @(x) consumption(velocity(x, route)); % integralens definition
tol = 5*1e-3;

xPrev = x0; % startgissning
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
Xcharge = x;