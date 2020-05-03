% Returns the number of terms needed to aproximate a function using a TaylorPolinomial
% f_name - string [ ln1px|lnraport]
% x  - float 
% x0 - float - the number which the TaylorPolinomial is centered 
% p  - float - precission 
function result = TaylorPolinomialAproximation2(f_name,x,x0,p)
  % sanity check to prevent infinite loop
  max = 100;
  i = 0;
  f = NthDerivativeProvider(f_name,0);
  prevTerm = 0;
  % primul termen e functia insasi
  % factorial(0) = 0 | (x-x0)^0 e 0
  term = f(x0);

  do
    i++;
    f = NthDerivativeProvider(f_name,i);
    prevTerm = term;
    term = f(x0) / factorial(i) * (x-x0)^i;
  until (abs(term - prevTerm) < p)
  
  result = i;
endfunction
