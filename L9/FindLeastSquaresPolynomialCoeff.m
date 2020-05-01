% X - known datapoints
% Y - known values for known datapoints (F(X) = Y)
% n - the degree of the polynomial that we need to find using least squares
function C = FindLeastSquaresPolynomialCoeff(X,Y, n)
   A = zeros(n+1,n+1);
   b = zeros(1,n+1);
  
   % Build normal equations 
   for i=1:n+1
     for j=1:n+1
       A(i,j) = sum(X.^(j-1) .* X.^(i-1));
     end
     b(i) = sum(Y .* X.^(i-1));
   end
   % Compute coefficients
   C = A \ b';
   C = C';
end
