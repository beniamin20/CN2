% Test Polynomial Sensitivity
format short g
% p(x)=(x-1)(x-2)...(x-20).
xi=1:20; p = poly(xi);
cn = polynomialSensitivity(p,xi);

[cns,ii] = sort(cn);
disp([xi(ii)',cns'])


% p      - coeficient values
% e.g. p(x) = x^2 - 5 -> p = [1, 0, -5];
% result - vector result[i] = condition number for root i
function [result] = polynomialSensitivity(p,xi)
if nargin<2, xi = roots(p); end% roots of the polynomial
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
end