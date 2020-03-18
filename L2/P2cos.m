% Dezvoltarea cosinusului in serie Taylor.
function result = P2cos(x = 10 * pi, err = eps)
  result = 0;
  % reducerea inputului la primul cadran
  x = mod(x, 2 * pi);
  term = 1;
  n = 1;
  do 
    result += term;
    term = (-1)^n * x^(2*n) / factorial(2*n);
    n++;
  until (abs(term) < err)
endfunction