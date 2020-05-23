% @input 
% X - known data points
% Y - known values for known data points
% x - data point to aproximate

% @return
% M     - unknown coeficients ecuations in Matrix format
% b     - M * c = b
% id_ec - index of the last added ecuation
function [M,b,id_ec] = BuildGenericSplineEcuations(X,Y,x)
  % i=1:n where n is number of data points n = length(X) = length(Y)
  % S(x) is a cubic polynomial denoted S[i](x) on the subinterval [X(i),X(i+1)]
  % S[1](x) = c1 + c2*(x - x1) + c3*(x-x1)^2 + c4*(x-x1)^3; 
  % S[2](x) = c5 + c6*(x - x2) + c7*(x-x2)^2 + c8*(x-x2)^3;
  % S[i](x) = c[4i-3] + c[4i-2]*(x - xi) + c[4i-1]*(x - xi)^2 + c[4i]*(x - xi)^3;
  % c1, c2 ... c[4*(n-1)] are unknowns further refferred as coeficients.
  
  
  % In order to compute the Spline interpolation we need to first find the 
  % value of the coeficients. In that sense we build a number of ecuations 
  % by imposing several conditions
  
  % powers of the polynomial nodes
  n = length(X);
  
  
  % M * c = b; Where c are the unknown coeficients
  M = zeros(4*(n-1), 4*(n-1)); 
  b = zeros(4*(n-1),1);
  
  % ecuation number
  id_ec = 1; 
  
  % S[i](X[i]) = f(X[i]) = Y[i] i=1:n-1 , n-1 ecuations
  % If we plug X[i] in S[i] what we are left with is the free term c[4i-3]
  for(i=1:n-1)
    col = 4*i-3;
    M(id_ec,col) = 1;
		b(id_ec) = Y(i);
    id_ec++;
  end
  
  % S[i](X[i+1]) = f(X[i+1]) = Y[i+1] i=1:n-1, n-1 ecuations
  % S[i](X[i+1]) = c[4i-3] + c[4i-2]*(X[i+1] - X[i]) + ..
  for(i=1:n-1)
    col = 4*i-3;
    M(id_ec,col:col+3) = ((X(i+1)-X(i)) * ones(1,4)) .^ [0 1 2 3];
    b(id_ec) = Y(i+1);
    id_ec++;
  end
  
  % i=1:n-2 , n-2 ecuations
  % S'[i](x) = c[4i-2] + 2*c[4i-1]*(x - xi) + 3*c[4i]*(x - xi)^2
  % S'[i](X[i+1])                               =   S'[i+1](X[i+1])
  % c[4i-2] + 2*c[4i-1]*(X[i+1]-X[i]) + 3*c[4i]*(X[i+1]-X[i])^2   =   c[4(i+1)-2]
  % c[4i-2] + 2*c[4i-1]*(X[i+1]-X[i]) + 3*c[4i]*(X[i+1]-X[i])^2 - c[4(i+1)-2] = 0
  for(i=1:n-2)
    col = 4*i-3;
    M(id_ec,col+1:col+3) = ((X(i+1)-X(i)) * [1 2 3]) .^ [0 1 2];
    M(id_ec,4*(i+1)-2) = -1;
    id_ec++;
  end
  
  % i=1:n-2, n-2 ecuations
  % S"[i](x) = 2*c[4i-1]*(x - xi) + 6*c[4i]*(x - xi)
  % S"[i](X[i+1])                =   S"[i+1](X[i+1])
  % 2*c[4i-1] + 6*c[4i]*(X[i+1]-X[i]) = 2*c[4(i+1)-1]
  % 2*c[4i-1] + 6*c[4i]*(X[i+1]-X[i]) - 2*c[4(i+1)-1] = 0
  for(i=1:n-2)
    col = 4*i-3;
    M(id_ec,col+2:col+3) = [2 6*(X(i+1)-X(i))];
    M(id_ec,4*(i+1)-1)   = -2;
    id_ec++;
  end 
end

