% General generic least square method algorithm
% X, Y -  Know data points and values
% n    -  the degree of the base function polynomial (baza 1,x,x^2,..,x^n)
% x    -  data points to aproximate 
% w    =  1 - no weight
function y = LSQDiscrete(x, X, Y, n)
   y = zeros(1,length(x));
   c = FindLeastSquaresPolynomialCoeff(X,Y,n);
   for i=1:length(x)
     y(i) = polyval(c,x(i));
   end
end