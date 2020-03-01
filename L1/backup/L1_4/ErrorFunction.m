% Integrala de la a la b din f(x) dx = f(b) - f(a)

% Evaluam integrala ca sa putem calcula valuarea functiei eroare date
% Aceasta procedura este folosita in procedura DerivataErrorFunction pentru a evalua
% functia data, derivata de 0 ori.

% x - Parametrul functiei
function result = ErrorFunction(x)
  % r    =  2/sqrt(pi)    *    (e^-(x^2)                   - e^-(0^2)) (orice numar ridicat la puterea 0 da 1
  result = (2 / sqrt(pi)) .* ((Exponentiala(1) .^ -(x.^2)) - 1);
end