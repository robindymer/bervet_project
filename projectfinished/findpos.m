function index = findpos(vector, val)
% index = findpos3(vector, val)
% Input: vektor och värde. Output: index för var värdet ligger i vektorn
    % Kontrollera först specialfall
    if val < vector(1) || val > vector(end)
        index=-1;
    elseif val == vector(1)
        index=2;
    else % genomför binärsökning för vektor i stigande ordning
        L = 1;
        R = length(vector);
        while L <= R
            m = floor((L+R)/2);
            if vector(m) >= val && vector(m-1) < val
                index = m;
                break
            elseif vector(m) < val
                L = m+1;
            elseif vector(m) > val
                R = m-1;
%             elseif vector(m) == val
%                 index = m;
%                 break
            end
        end
    end