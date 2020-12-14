function v = velocity(x, route)
% v = velocity(x, route)
% Input: en position och en rutt. Output: hastighet.
% Uppgift:
% Ta en position x
% Använd findpos3 för att hitta mellanliggande värden i route
% Implementera Lagrange
load(route, 'distance_km', 'speed_kmph');

for i=1:length(x)
    index = findpos(distance_km, x(i));
    if index == -1
        disp("Det sökta värdet ligger utanför datamängden!")
    else    
        % Lagrange linjär interpolation
        x2 = distance_km(index);
        x1 = distance_km(index-1);
        v1 = speed_kmph(index);
        v2 = speed_kmph(index-1);

        L1 = v1*(x(i)-x2)/(x1-x2); % x är den givna positionen
        L2 = v2*(x(i)-x1)/(x2-x1);

        v(i) = L1 + L2;
    end
end
