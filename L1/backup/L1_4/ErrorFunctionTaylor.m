% Procedura construieste si evalueaza polinomul Taylor pentru functia eroare data
% x - parametrul functiei
% n - numarul de termeni al polinomului
% a - punctul in care se evalueaza polinomul
function result = ErrorFunctionTaylor(x,n,a)
  result = 0;
  for i = 0:n
    result = result + (DerivataErrorFunction(i,a)) .* ((x - a) .^ i) .* (1 / factorial(i));
  endfor
end