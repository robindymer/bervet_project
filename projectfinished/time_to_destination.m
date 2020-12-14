function T = time_to_destination(x, route, n)
% T = time_to_destination(x, route, n)
% Input: En sträcka (km), en viss rutt, samt n antalet delintervall.
% Beräknar den tid det tar för att åka den givna sträckan med
% trapetsmetoden.
% T(x) = int_0^x 1/v(s)ds
h = x./n;
a = 0;
Tm = 1/velocity(a, route);
for i=1:n-1
    a = a + h;
    Tm = Tm + 2*1./velocity(a, route);
end
Tm = Tm + 1./velocity(x, route);
T = h.*Tm/2;