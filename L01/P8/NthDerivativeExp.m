% evaluam derivata in pct x0 = 0 (dupa cum mentioneaza enuntul)
% e^x derivat de oricate ori e e^x
% n - integer 
function result = NthDerivativeExp(n)
  if n < 0
    result = 0;
    return;
  endif
  result = 1;
endfunction
