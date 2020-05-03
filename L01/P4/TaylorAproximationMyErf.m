% Procedura construieste si evalueaza polinomul Taylor pentru functia eroare data
% x  - parametrul functiei
% x0 - punctul in care este centrat polinomul
% n  - numarul de termeni al polinomului
function result = TaylorAproximationMyErf(x,x0,n)
  result = 0;
  for i = 0:n
    % f derivat evaluat in punctul x0
    fd = MyErfNthDerivative(i,x0);
    fact = factorial(i);
    result = result + (fd/fact * (x - x0)^i);
  endfor
end