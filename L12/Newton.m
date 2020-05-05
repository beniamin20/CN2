% f  = function e.g @(x) cos(x) - x;
% fd = derivative of above function e.g. @(x) - sin(x) - 1;
% x1 = initial aprox for f(x1)= 0 e.g. pi/4
% err = error tolerance e.g. eps
% nmax = maximum number of iterations
function result = Newton(f,fd,x1,err,nmax)
  for i=1:nmax
    result = x1 - (1/fd(x1)) * f(x1);
    if abs(result - x1) < err
       return;
    end
    x1 = result;
  end
  error("Can not solve in given number of iterations with given err tolerance");
end