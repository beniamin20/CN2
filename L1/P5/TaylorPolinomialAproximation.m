% Procedure aproximates f(x) using the n term Taylor polinomial centered in x0
% Parameters                Example Values
% f   - function_handle    f = @(x) log(1+x)
% x   - float              1   
% x0  - float              0.1
% n   - integer            10
function result = TaylorPolinomialAproximation(f,x,x0,n)
  syms xs;
  % f derivat symbolic. f derivat de 0 ori e functia in sine
  fds = f(xs);
  result = 0;
  
  for i = 0:n
    ff = function_handle(fds);
    % Din formula lui Taylor
    result = result + ff(x0) / factorial(i) * (x-x0)^i;
    % calculam derivata pentru urmatoarea iteratie
    fds = diff(fds,xs);
  endfor
endfunction
