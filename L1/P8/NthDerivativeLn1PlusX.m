% evaluam derivata in pct x0 = 0 (dupa cum mentioneaza enuntul)
% n - integer 
function result = NthDerivativeLn1PlusX(n)
  % log(1) = 0;
  if(n <= 0)
    result = 0; 
  endif
  % Din derivata de ordin n a ln(1+x)
  result = (-1)^(n-1) * factorial(n-1);
endfunction
