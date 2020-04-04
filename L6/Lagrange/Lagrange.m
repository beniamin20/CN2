% f(X) = Y
% x - new data point for which we wish to aproximate y
% X - given X data points 
% Y - given Y data points
function result = Lagrange(x,X,Y)
  l = lkV(x,X);
  result = sum(l .* Y);
end

% compute l - vector of Lagrange Polynomial evaluations
function l = lkV(x,X)
  l = [];
  for k = 1:length(X)
    l = [l lk(k,x,X)];
  end
endfunction

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

% @deprecated in favor of lk(k,x,X)
% computes lk - The kth Lagrange Polynomial
% k - polynomial index
% x - new data point for f(x)
% X - initial X data points.
function result = lkDeprecated(k,x,X)
  m = length(X);
  terms = [];
  for j = 1:m
    if(j == k)
      continue;
    end
    terms = [terms (x-X(j))/(X(k)-X(j))];
  end
  result = prod(terms);
end