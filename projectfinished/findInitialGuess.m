function guess = findInitialGuess(f, a, b, n)
% guess = findInitialGuess(f)
% Input: funktion, ändpunkter och intervall. Output: startgissning
% Givet ekvation på nollform, hitta intervall där de byts tecken
h = abs(a-b)/n;
guesses = [];
n = 1;
for i=a:h:b
    if f(i)*f(i+h) < 0
        guesses(n) = i; % möjligen bättre med (i + i_nästa) / 2
        n = n+1;
    end
    disp(i)
end
guess = guesses;