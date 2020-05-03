% Procedure returns the nth derivative of ln(1+x) as a function handle
% n - integer
function result = Ln1PlusXNthDerivative(n)
  % ln(1+x) derivat de 0 ori e functia in sine
  if (n == 0) 
    result = @(x0) log(1+x0);
    return;
  endif
  
  result = @(x0)(-1)^(n-1) * factorial(n-1) / (1+x0)^n;
endfunction
