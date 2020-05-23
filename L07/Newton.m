% When in dobut use the debugger
% f(X) = Y
% x - x to aproximate
% X - Known x data points
% Y - Known y values
function y = Newton(x,X,Y)
  % use predifined input
  if(nargin < 3)
    x = 1.5;
    X = [1.0 1.3 1.6 1.9 2.2];
    Y = [0.7651977 0.6200860 0.4554022 0.2818186  0.1103623];
  end
  
  % sort input by X(i)-x
  [aux,ii] = sort(abs(X-x));
  X = X(ii);
  Y = Y(ii);
  
  [Q,z] = DivDiff(X,Y);
  y     = LIPNewton(x,Q,z);
end