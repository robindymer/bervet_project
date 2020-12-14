function E = tot_consumption_trash(x, route, n)
% E = tot_consumption(x, route, n)
% Input: sträcka, rutt och intervall. Output: elkonsumption för sträckan
% E(x)=int_0^x c(v(s))ds
h = x/n;
a = 0;
Em = consumption(velocity(a, route));
for i=1:n-1
    a = a + h;
    if mod(i, 2)
        Em = Em + 2.*consumption(velocity(a, route));
    else
        Em = Em + 4.*consumption(velocity(a, route));
    end
end
Em = Em + consumption(velocity(x, route));
E = h/3.*Em;