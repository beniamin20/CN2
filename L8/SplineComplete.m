% When in doubt. Use the debugger.
% Compute SplineNatural Interpolation
% F(X) = Y F(x) ~ y

% @input
% X   - known data points
% Y   - known values for known data points
% x   - data point to aproximate
% yd1 - y'(x(1))
% yd2 = y'(x(length(x))
 
% @return
% y - aproximation for x
% c - ecuation coeficients
function [c,y] = SplineComplete(X,Y,x,yd1,ydn)

  [M,b,id_ec] = BuildGenericSplineEcuations(X,Y,x);
  n = length(X);
  % Conditions specific to natural splines
  
  % S'[1](X[1]) = f'(X[1]) = yd1
  
  % S[i](x)     = c[4i-3] + c[4i-2]*(x - xi) + c[4i-1]*(x - xi)^2 + c[4i]*(x - xi)^3;
  % S'[i](x)    = c[4i-2] + c[4i-1]*(x - xi) + c[4i]*(x - xi)^2;
  % S'[1](X[1]) = c[2]
  M(id_ec,2) = 1;
  b(id_ec)   = yd1;
  id_ec++;

  % S'[n-1](X[n]) = f'(X[n]) = ydn
  % S'[i](x)    = c[4i-2] + c[4i-1]*(x - xi) + c[4i]*(x - xi)^2;
  % i = n-1, x = X[N] 
  M(id_ec,4*(n-1)-2:4*(n-1)) = ((X(n)-X(n-1)) * ones(1,3)) .^ [0 1 2];
  b(id_ec) = ydn;

  % c - spline polynomials coeficients
  c = M \ b;
  c = c';

  y = ComputeSplineInterpolation(x,X,c);
end