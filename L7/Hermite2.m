% When in dobut use the debugger
% Use this procedure when the intermediate values of the polynomial are needed

% f(X) = Y
% x   - x to aproximate
% X   - Known x data points
% Y   - Known y values
% Yd  - derivative of Y
% err - error tolerance 
% @return
% y  - f(x) ~ y
% Hp - Values of Hermite Polinomial 
function [Hp,y] = Hermite2(x,X,Y,Yd)
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
  
  [z,Q] = DivDiffDoubleNodes(X,Y,Yd);
  % remove Y(1) from Q
  Q = Q(2:end);
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

% Get hardcoded input
function [x,X,Y,Yd] = getInput()
   x   = 1.5;
   X   = [1.3 1.6 1.9];
   Y   = [0.6200860 0.4554022 0.2818186];
   Yd  = [-0.5220232 -0.5698959 -0.5811571]; 
end