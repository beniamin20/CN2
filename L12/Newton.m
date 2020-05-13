% f  = function e.g @(x) cos(x) - x;
% fd = derivative of above function e.g. @(x) - sin(x) - 1;
% x1 = initial aprox for f(x1)= 0 e.g. pi/4
% err = error tolerance e.g. eps
% nmax = maximum number of iterations
function result = Newton(f,fd,x1,err,nmax)
  %result = zeros(1,length(x1));
  x = x1;
  for i=1:nmax
      result = x - f(x)./fd(x);
      if abs(result - x) < err
             break;
      end
      x = result;
  end
end