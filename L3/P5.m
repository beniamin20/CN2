function [result, n] = P5(n = 3, err = eps)
  % compute En
  En = 1/n+1;
  En = computeE(En,n-1);
  
  % compute En+1 
  n++;
  EnNext = 1/n+1;
  EnNext = computeE(EnNext,n);
  
  % compute the difference in results
  dif = abs(EnNext-En)/EnNext;

  % while the difference is not neglijable
  while(dif >= err)
    En = EnNext;
    n++;
    
    EnNext = 1/n+1;
    EnNext = computeE(EnNext,n);
  
    dif = abs(EnNext-En)/EnNext;
  endwhile
  
  % e with given precission
  result = En;
end

% En = 1-n*En-1 => En-1 = (1-En)/n
function result = computeE(Enp1, n)
  term = (1-Enp1)/(n+1);
  if(n==1)
    result = term^(-1);
    return
  endif
  result = computeE(term, n-1);
endfunction
