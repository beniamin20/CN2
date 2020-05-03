% f - f(x) the function to integrate. e.g. f = @(x) 1 + x.^2;
% a,b - Integration limits
% n - number of squares. Higher the n -> higher the precission
function I = IntegrateTrapezoidal(f,a,b,n)
  I = solveUsingTrapezoidal(f,a,b,n);
end

% f - f(x) the function to integrate. e.g. f = @(x) 1 + x.^2;
% a,b - f:[a,b]->R boundaries of function domain definition
% n - number of squares. Higher the n -> higher the precission
function I = solveUsingTrapezoidal(f,a,b,n)
  % delta x;
  dx     = (b-a)/n; 
  I = f(a)+f(b);
  for i=1:n-1
      xi = a+i*dx;
      I = I + (2*f(xi));
  end
  I = (dx/2) * I;
end
