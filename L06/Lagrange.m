% When in doubt, use the debugger.
% f(X) = Y
% x - new data point for which we wish to aproximate y
% X - given X data points 
% Y - given Y data points
function y = Lagrange(x,X,Y)
  y = zeros(1,length(x));
  for i=1:length(x)
    l = lkV(x(i),X);
    y(i) = sum(l .* Y);
  end
end

% compute l - vector of Lagrange Polynomial evaluations
function l = lkV(x,X)
  l = zeros(length(X));
  for k = 1:length(X)
    l = [l lk(k,x,X)];
  end
end

% computes lk - The kth Lagrange Polynomial
% k - polynomial index
% x - new data point for f(x)
% X - initial X data points.
function result = lk(k,x,X)
  xk = X(k);
  m  = length(X);
  X  = [X(1:k-1) X(k+1:m)];
  result = prod((x-X)./(xk-X));     
end