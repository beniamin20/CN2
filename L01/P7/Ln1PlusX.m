% f(x) = ln(1+x)
% x - float, valoare pt x
% n - numarul de termeni din polinom
% result - array [T1, T2, T3 ... Tn)
function result = Ln1PlusX(x,n)
  result = [];
  % ln(1) = 0
  sum = 0;
  result(end+1) = sum;
  
  for(i = 1:n)
    fd = (-1)^(i-1) * factorial(i-1);
    term = fd / factorial(i) * (x)^i;
    sum = sum + term;
    result(end+1) = sum;
  endfor
endfunction
