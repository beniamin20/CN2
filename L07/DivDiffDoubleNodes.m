% When in dobut use the debugger
% Compute Hermite divided differences
% In the given example the return value Q must match the first line of the
% given divided differences table(http://math.ubbcluj.ro/~tradu/labrom/NEWTDIV.pdf)

% f(X) = Y
% X   - Known x data points
% Y   - Known y values
% Q - divided differences table (without Y(1));
% z - x nodes doubled.
function [z,Q] = DivDiffDoubleNodes(X,Y,Yd)
  m = length(X);
  for i=1:m
    z(2*i)      = X(i);  
    z(2*i-1)    = X(i);
    Q(2*i-1,1)  = Y(i);
    Q(2*i,1)    = Y(i);
    Q(2*i,2)    = Yd(i);
    
    if (i ~= 1)
      num   = Q(2*i-1,1) - Q(2*i-2,1);
      denom = z(2*i-1)   - z(2*i-2);
      Q(2*i-1,2) = num/denom;
    end
  end
  
  for i=3:2*m
    for j=3:i
      num    = Q(i,j-1) - Q(i-1,j-1);
      denom  = z(i)     - z(i-j+1);
      Q(i,j) = num / denom;
    end
  end
  % Q(1) contains Y(1)
  Q = diag(Q);
  Q = Q';
end