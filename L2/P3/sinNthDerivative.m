% nth derivative of sin(x) evaluated in x = 0
function result = sinNthDerivative(n)
  m = mod(n,4);
  switch(m)
    case 1
      result = 1;
    case 3
      result = -1;
    case {2, 0} 
      result = 0;
  endswitch
endfunction