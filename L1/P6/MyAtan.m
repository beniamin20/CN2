% https://math.stackexchange.com/questions/29649/why-is-arctanx-x-x3-3x5-5-x7-7-dots
% x   - float with constraint abs(x) < 1
% err - float precission
% @return
% n   - int number of terms needed
% sum - float aproximation of MyAtan using polinomial
function [n,sum] = MyAtan(x, err)
  sum = 0;
  term = x;
  n = 0;
  while (abs(term) > err)
    sum = sum + term;
    n = n + 1;  
    term  = power(-1,n) * power(x,2*n + 1) / (2*n + 1);
  endwhile
end

% Is the series valid for abs(x) > 1?
% Is this series still a Taylor series?