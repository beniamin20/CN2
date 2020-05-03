% GIGO
% will work only for n >= 7
function [A2,b2] = GenerateAb2(n = 10)
  A2 = generateA2(n);
  b2 = generateb2(n);
endfunction

function A2 = generateA2(n)
  A2 = zeros(n);
  for(i=1:n)
    A2(i,i) = 5;
    if(i-1 > 0)
      A2(i,i-1) = -1;
    endif
    if(i+1 <= n)
      A2(i,i+1) = -1;  
    endif
    
    if(i-3 > 0) 
      A2(i,i-3) = -1;
    endif
    if(i+3 <=n)
      A2(i,i+3) = -1;
    endif    
  endfor
endfunction
 
function b2 = generateb2(n)
  b2                    = ones(1,n);
  b2(1)                 = 3;
  b2(end)               = 3;
  b2(2) = b2(3)         = 2;
  b2(end-1) = b2(end-2) = 2;
  b2 = b2';
end