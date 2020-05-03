% f - f(x) the function to integrate. e.g. f = @(x) 1 + x.^2;
% a,b - Integration limits
% n - !must be even! number of squares. Higher the n -> higher the precission
function I = IntegrateSimpson(f,a,b,n)
   I = solveUsingSimpson(f,a,b,n);
end

% f - f(x) the function to integrate. e.g. f = @(x) 1 + x.^2;
% a,b - f:[a,b]->R boundaries of function domain definition
% n - !must be even! number of squares. Higher the n -> higher the precission
function I = solveUsingSimpson(f,a,b,n)
  % delta x;
  dx     = (b-a)/n; 
  I = f(a)+f(b);
  
  for i=1:n-1
      xi = a+i*dx;
      if mod(i,2) == 1
         I = I + (4 * f(xi));
      else
         I = I + (2 * f(xi));
      end
  end
  I =  (dx/3) * I;
end