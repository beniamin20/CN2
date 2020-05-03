% f(x) = e^x
% x - float
% n - numarul de termeni din polinom
% result - array [T1, T2, T3 ... Tn)
function result = MyExp(x,n)
  result = [];
  sum = 1;
  result(end+1) = sum;
  
  for(i = 1:n)
    term = x^i / factorial(i);
    sum = sum + term;
    result(end+1) = sum;
  endfor
endfunction
