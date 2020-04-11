% When in doubt, use the debugger.
% y =  ChebLagrange(X,Y,x)
% X -  Known points. Nodes for which y is known
% Y -  Known values for known points f(X(i)) = Y(i)
% x -  Points for which we need to aproximate the function value
% y -  Resulting aproximations f(x(i)) ~ y(i)
function y = ChebLagrange(X,Y,x)
  % compute weights
  n = length(X);
  w = computeWeights(length(Y));
  
  % we approximate all given x values at once
  % numerator and denominator vector
  numerator   = zeros(size(x));
  denominator = zeros(size(x));
  
  % if a known x value(for which we have a y) 
  % is passed through unkown x values(for which aprox is needed)
  % we need to return the exact known|corespondent y value.
  exact = zeros(size(x));

  for j=1:n
      x_diff = x-X(j);
      
      % division by zero is allowed and results in inf
      new_wj = w(j) ./ x_diff;
      numerator += new_wj * Y(j);
      denominator += new_wj;
      
      % x_diff == 0 returns the index of the 0 value
      exact(x_diff==0) = j;
  end
  % compute new y values
  y = numerator ./ denominator;
  
  % plug in know y if any known x was passed
  jj = find(exact);
  y(jj) = Y(exact(jj));
end

% Compute weights used in Lagrange formula
% n - length of Y
function w = computeWeights(n)
  w = [1/2; ones(n-1,1); 1/2].*(-1).^((0:n)');
  w = w';
end