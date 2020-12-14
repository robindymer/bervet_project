function E = tot_consumption(x, route, n)
% E = tot_consumption(x, route, n)
% Input: sträcka, rutt och intervall. Output: elkonsumption för sträckan
% E(x)=int_0^x c(v(s))ds
h = x/n;
xi=0:h:x;
f = @(x) consumption(velocity(x, route));
I= h/3*(f(xi(1))+2*sum(f(xi(3:2:end-2)))+4*sum(f(xi(2:2:end)))+f(xi(end)));
E=I;