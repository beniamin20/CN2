% Dezvoltarea sinusului in serie Taylor.
function result = sinTaylor(x = 10 * pi, err = eps)
  result = 0;
  % reducerea inputului la primul cadran
  x = mod(x, 2 * pi);
  term = x;
  n = 1;
  do 
    result += term;
    term = (-1)^n * x^(2*n + 1) / factorial(2 * n + 1);
    n++;
  until (abs(term) < err)
endfunction