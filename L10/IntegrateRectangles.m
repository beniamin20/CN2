% f - f(x) the function to integrate. e.g. f = @(x) 1 + x.^2;
% a,b - Integration limits
% n - number of squares. Higher the n -> higher the precission
function I = IntegrateRectangles(f,a,b,n)
    I = solveUsingRectangles(f,a,b,n);
end

% f - f(x) the function to integrate. e.g. f = @(x) 1 + x.^2;
% a,b - f:[a,b]->R boundaries of function domain definition
% n - number of squares. Higher the n -> higher the precission
function I = solveUsingRectangles(f,a,b,n)
  % delta x;
  dx     = (b-a)/n; 
  I = 0;
  % xi previous
  xip = 0;
  for i=1:n
      xi = a+i*dx;
      I = I + f((xip+xi)/2);
      xip = xi;
  end
  I =  dx * I;
end