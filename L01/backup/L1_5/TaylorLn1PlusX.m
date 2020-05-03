% Procedura evalueaza polinomul taylor aferent functiei f(x) = ln(1+x)
% intr-un punct dat x0

% n - numarul de termeni al polinomului
% x - valoarea lui x
% x0 - punctul in care se evalueaza seria taylor

% Exemplu de parametrii:
% TaylorLn1PlusX(8,1,0)
function result = TaylorLn1PlusX(n,x,a)
  result = NthDerivative(0,xo);
  for i = 1:n
    result = result + ((NthDerivative(i,xo) / factorial(i)) * ((x-xo)^i)); 
  endfor
end