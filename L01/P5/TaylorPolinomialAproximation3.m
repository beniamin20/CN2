% Procedure aproximates f(x) using the n term Taylor polinomial centered in x0
% Parameters                Example Values
% f   - string    [ln1px|lnraport]
% x   - float              1   
% x0  - float              0.1
% n   - integer            10
function result = TaylorPolinomialAproximation3(f,x,x0,n)
  result = 0;
  for i = 0:n
    % f derivat de n ori
    fd = NthDerivativeProvider(f,i);
    result = result + (fd(x0) / factorial(i) * (x-x0)^i);
  endfor
endfunction
