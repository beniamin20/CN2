% Procedure returns the nth derivative of ln((1+x0)/(1-x0)) as a function handle
% n - integer
function result = LnRaportNthDerivative(n)
   % f derivat de 0 ori e functia in sine
  if (n == 0)
    result = @(x0) log((1+x0)/(1-x0));
    return;
  endif
  
  result = @(x0) factorial(n-1) / (x0+1)^n - factorial(n-1) / (x0-1)^n;
endfunction
