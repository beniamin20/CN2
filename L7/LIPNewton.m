% When in dobut use the debugger
% Compute Lagrange Interpolation Polinomial in Newton form
% This method can be used for both Newton and Hermite polynomials
% The difference between these two methods is 
% Q - the values of the divided differences
% X - the nodes. (In the case of Hermite the nodes are doubled)

% x  - Vector of data points for which we need to compute the aproximation 
% Q  - Divided Diferences 
% X  - Known data points
% y  - Aproximations for given x
function y = LIPNewton(x,Q,X)
  lx = length(x); % length of nodes to compute
  LX = length(X); % length of known data points
  for j=1:lx
    diff = x(j)-X;
    y(j) = [1,cumprod(diff(1:LX-1))] * Q';
  end
end