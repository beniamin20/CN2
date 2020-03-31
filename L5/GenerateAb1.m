function [A1,b1] = GenerateAb1(n = 10)
  A1 = generateA1(n);
  b1 = generateb1(n);
endfunction

function A1 = generateA1(n)
  A1 = zeros(n);
  for(i=1:n)
    A1(i,i) = 5;
    if(i-1 > 0)
      A1(i,i-1) = -1;
    endif
    if(i+1 <= n)
      A1(i,i+1) = -1;  
    endif
  endfor
endfunction

function b1 = generateb1(n)
  b1      = 3 * ones(1,n);
  b1(1)   = 4;
  b1(end) = 4;
  b1      = b1';
end