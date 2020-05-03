% When in doubt. Use the debugger.
% Compute SplineSecondDerivative Interpolation
% F(X) = Y F(x) ~ y

% @input
% X   - known data points
% Y   - known values for known data points
% x   - data point to aproximate
% ydd1 - y"(x(1))
% yddn = y"(x(length(x))
 
% @return
% y - aproximation for x
% c - ecuation coeficients
function [c,y] = SplineSecondDerivative(X,Y,x,ydd1,yddn)
  [M,b,id_ec] = BuildGenericSplineEcuations(X,Y,x);
  n = length(X);
  
  % Conditions specific to second derivative splines
  % S[1]"(x[1]) = ydd1
  % S"[i](x) = 2*c[4i-1] + 6*c[4i]*(x - xi)
  M(id_ec,3) = 2;
  b(id_ec)   = ydd1;
  id_ec++;

  
  % S[n-1]"(x[n]) = yddn
  % S"[n-1](X[n])    = 2*c[4(n-1)-1] + 6*c[4i]*(X[n] - X[n-1]);
  M(id_ec,4*(n-1)-1:4*(n-1)) = [2 6*(X(n)-X(n-1))]; 
  b(id_ec) = yddn;
  
  % c - spline polynomials coeficients
  c = M \ b;
  c = c';

  y = ComputeSplineInterpolation(x,X,c);
end