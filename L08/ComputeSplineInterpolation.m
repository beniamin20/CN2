% Given the nodes to aproximate x and the coeficients of the associated 
% spline polynomials Computes f(x) ~ y
% X - given datapoints for which values are known.
% x - nodes to aproximate values for
% c - spline polynomials coeficients
% y - the aproximation
function y = ComputeSplineInterpolation(x,X,c)
  n = length(x);
  for(k=1:n)
     xk = x(k);
     i = findOptimumPosition(xk,X);
     y(k) = sum( ((xk-X(i)) * ones(1,4)) .^ [0 1 2 3] .* c(4*i-3:4*i));
  end
end

% Find the spline polynomial to use.
function i = findOptimumPosition(xk, X)
  n = length(X);
  for i = 1:n-1
			if X(i) <= xk && xk <= X(i+1)
				break;
			end
		end
end