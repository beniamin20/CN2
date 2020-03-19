% nth derivative of cos(x) evaluated in x = 0
function result = cosNthDerivative(n)
  m = mod(n,4);
  switch(m)
    case 0
      result = 1;
    case {1, 3}
      result = 0;
    case 2
      result = -1;
  endswitch
endfunction