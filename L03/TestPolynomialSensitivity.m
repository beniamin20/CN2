% Test Polynomial Sensitivity
function TestPolynomialSensitivity()
  p = [1, 0, -5];
  [xi,cn] = polynomialSensitivity(p)
endfunction

% p      - coeficient values
% e.g. p(x) = x^2 - 5 -> p = [1, 0, -5];
% result - vector result[i] = condition number for root i
function [xi,result] = polynomialSensitivity(p)
  xi = roots(p); % roots of the polynomial
  n = length(p) - 1; 
  
  % polynomial derivative (e.g. pd = [2 0] or pd(x)=2x + 0)
  pd = [n:-1:1].*p(1:end-1);
  
  % copmpute the values of the derivative polynomial by pluging in the roots
  % pdv = pd(x)=2x + 0 where x takes value of each root
  pdv = polyval(pd,xi);
  
  % compute the values of p(x) for each root, remove p1*x^(n-1) term
  pv = polyval(abs(p(2:end)),abs(xi));
  
  % compute condition number for each root
  result = 1./abs(xi.*pdv).*pv;
endfunction