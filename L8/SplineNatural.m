% Compute SplineNatural Interpolation
% F(X) = Y F(x) ~ y
% @input
% X - known data points
% Y - known values for known data points
% x - data point to aproximate
% @return
% y - aproximation for x
% c - ecuation coeficients
function [c,y] = SplineNatural(X,Y,x)

  [M,b,id_ec] = BuildGenericSplineEcuations(X,Y,x);
  
  % Conditions specific to natural splines
  % S"[i](x)          <=> c[4i-1] + c[4i]*(x-X[i])
  % (1) S"[1](X[1])   <=> c[3]
  % (2) S"[1](X[1])   = 0
  % (1)(2) => c[3]    = 0
  M(id_ec,3) = 1;
  id_ec++;
  
  
  % S"[i](x)      <=> c[4i-1] + c[4i]*(x-X[i])
	% S"[n-1](x[n])  = 0
  % c[4(n-1)-1] + c[4(n-1)]*(X[n]-X[n-1]) = 0
  M(id_ec,4*(n-1)-1:4*(n-1)) = [1 (X(n)-X(n-1))];
  
  % c - spline polynomials coeficients
  c = M \ b;
  c = c';

  y = ComputeSplineInterpolation(x,X,c);
end