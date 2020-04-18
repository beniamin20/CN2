% Compute SplineNatural Interpolation
% F(X) = Y F(x) ~ y

% @input
% X - known data points
% Y - known values for known data points
% x - data point to aproximate

% @return
% y - aproximation for x
% c - ecuation coeficients
function [c,y] = SplineDeBor(X,Y,x)
  n = length(X);
  [M,b,id_ec] = BuildGenericSplineEcuations(X,Y,x);
  
  % Conditions specific to "not a knot" DeBor splines
  % S"'[i](x) = 6*c[4i]
  % S[1]"'(X[2]) = S[2]"'(x[2]) 
  % 6*c[4]         = 6*c[8]
  M(id_ec,4) = 6;
  M(id_ec,8) = -6;  
  id_ec++;
  
  % S"'[i](x) = 6*c[4i]
  % S[n-2]"'(X[n-1]) = S[n-1]"'(x[n-1])
  % c[4*(n-2)]       = c[4*(n-1)]
  M(id_ec,4*(n-2)) = 6;
  M(id_ec,4*(n-1)) = -6;
  
  % c - spline polynomials coeficients
  c = M \ b;
  c = c';
  
  y = ComputeSplineInterpolation(x,X,c);
end