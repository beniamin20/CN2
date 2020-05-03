% Problema 5
% n - ordinul derivatei
% x0 - punctul in care se calculeaza derivata

% Exemplu de parametri:
% Pentru f(x0) derivat de 3 ori
% NthDerivative(3,0.3) 
function result = NthDerivative(n,x0)
  % Derivata de ordinul 0 este functia in sine
  result = log(1 + x0);
  if n == 0
   return;
  end
  result = power(-1,n-1) * factorial(n-1) * power(1+x0, -n);
end