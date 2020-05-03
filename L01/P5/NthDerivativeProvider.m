% Given a convention based function name will return the nthDerivative
% function_name - string [ln1px|lnraport]
function result = NthDerivativeProvider(function_name, n)
  switch (function_name)
    case "ln1px"
       result = Ln1PlusXNthDerivative(n);
    case "lnraport"
       result = LnRaportNthDerivative(n);
    otherwise
       result = @(x) x;
       disp("An error occured. NthDerivativeProvider method accepts only ln1px or lnraport as params. Returned f(x) = x");
  endswitch  
endfunction
