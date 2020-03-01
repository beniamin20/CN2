% Procedura calculeaza valoarea derivatei de ordin n a functiei erf data  
% In cazul in care n = 0 functia intoare valoarea functiei data.
% De aceea avem nevoie de o procedura care calculeaza valoarea functiei date.

% In cazul in care n este diferit de 0 procedura evalueaza derivata de ordin n
% Formula ptr derivata de ordin n a fost calculata offline si este urmatoarea:
% (-1)^(n-1) * e^-(x^2) * 2^n * x^(n-1) * 1/sqrt(pi); 

% n - ordinul derivatei
% x - parametrul functiei 
% TODO fin derivative of given function
function result = DerivataErrorFunction(n,x)
  if n == 0
    result = ErrorFunction(x);
    return;
  end
  % r    = (-1)^(n-1)       *  e^-(x^2)                     *    2^n     *    x^(n-1)        *   1/sqrt(pi); 
  result = ((-1) .^ (n-1)) .* (Exponentiala(1) .^ -(x^2))  .*  (2 .^ n) .*  (x .^ (n-1))    .*   1/sqrt(pi);        
end