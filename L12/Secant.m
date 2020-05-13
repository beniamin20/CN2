% f = @(x) cos(x) - x;
% x1 = 0.5
% x2 = pi/4
% err = eps
% nmax = 100
function result = Secant(f,x1,x2,err,nmax)
  for i = 1:nmax
    result = x2 - ((x2 - x1) .* f(x2)) ./ (f(x2) - f(x1));
    if abs(result - x2) < err + err * abs(result)
      return;
    end
    x1 = x2;
    x2 = result; 
  end
end