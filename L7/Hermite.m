% When in dobut use the debugger
% f(X) = Y
% x   - x to aproximate
% X   - Known x data points
% Y   - Known y values
% Yd  - derivative of Y
% err - error tolerance 
% @return
% y  - f(x) ~ y
% Hp - Values of Hermite Polinomial 
function [Hp,y] = Hermite(x,X,Y,Yd)
  Hp = [];
  % use predifined input
  if(nargin < 4)
    [x,X,Y,Yd] = getInput();
  end
  % sort input by X(i)err = eps;
  [aux,ii] = sort(abs(X-x));
  X  = X(ii);
  Y  = Y(ii);
  Yd = Yd(ii);
  
  [z,Q] = computeQ(X,Y,Yd);
  Hp(1) = py = Y(1);
  
  
  for(i=1:length(Q))
    y = py + Q(i)*prod(x-z(1:i)); 
    
    % stop condition. Improvment is smaller than eps
    if(abs(y-py) < eps) 
      return;
    end
    Hp(i+1) = py = y;
  end
end

% Compute Hermite divided differences
% In the given example the return value Q must match the first line of the
% given divided differences table(http://math.ubbcluj.ro/~tradu/labrom/NEWTDIV.pdf).
% Q - divided differences table (without Y(1));
% z - x nodes doubled.
function [z,Q] = computeQ(X,Y,Yd)
  m = length(X);
  for i=1:m
    z(2*i-1)    = z(2*i)   = X(i);
    Q(2*i-1,1)  = Q(2*i,1) = Y(i);
    Q(2*i,2)    = Yd(i);
    if (i ~= 1)
      num   = Q(2*i-1,1) - Q(2*i-2,1);
      denom = z(2*i-1)   - z(2*i-2);
      Q(2*i-1,2) = num/denom;
    endif
  endfor
  
  for i=3:2*m
    for j=3:i
      num    = Q(i,j-1) - Q(i-1,j-1);
      denom  = z(i)     - z(i-j+1);
      Q(i,j) = num / denom;
    endfor
  endfor
  Q = diag(Q);
  % Remove Y(1) from Q
  Q = Q(2:end);
end

% Get hardcoded input
function [x,X,Y,Yd] = getInput()
   x   = 1.5;
   X   = [1.3 1.6 1.9];
   Y   = [0.6200860 0.4554022 0.2818186];
   Yd  = [-0.5220232 -0.5698959 -0.5811571]; 
end