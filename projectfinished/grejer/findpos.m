% Funktion som tar en punkt och returnerar
% de två punkter som invärdet ligger mellan
function index = findpos(vector, val)
    for i=1:length(vector)
        if vector(i) >= val
            if i == 1 % specialfall
                index = 2;
            else
                index = i;
            end
            break % vi är klara
        else
            index = -1;
        end
    end