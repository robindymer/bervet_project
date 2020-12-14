% Kolla i roadster antal lösningar och direkta startvärden
% Givet en elförbrukning, ungefär var ligger lösningen v?
% Sök genom datan och kolla efter värdet där E ligger mellan eller är det
% exakt
% start = 0;
% % n = 1;
% if E > max(consumption_Whpkm) || E < min(consumption_Whpkm)
%     disp("Det finns ej data för den givna konsumtionen")
% else
%     for i=1:length(consumption_Whpkm)
%         if E > consumption_Whpkm(i) && E < consumption_Whpm(i+1) || E < consumption_Whpkm(i) && E > consumption_Whpkm(i+1)
%             start = speed_kmph(i);
%             break
% %           n = n+1;
%         end
%     end
% end
% disp(start)