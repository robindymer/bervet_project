% Funktion som tar en punkt och returnerar
% de två punkter som invärdet ligger mellan
function index = findpos2(vector, val)
    i = 1;
    if length(vector) == 1 && val > vector(i)
        index = -1; % specialfall
    else
        index = 1; % standard
    end
    while val > vector(i) && i < length(vector)
        i = i + 1;
        if vector(i) >= val
            index = i;
        else
            index = -1;
        end
    end