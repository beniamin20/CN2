% When in dobut use the debugger
% f(X) = Y
% x   - vector of data points to aproximate
% X   - Known x data points
% Y   - Known y values
% Yd  - derivative of Y
% @return
% y  - vector of f(x) ~ y
function y = Hermite(x,X,Y,Yd)
  Hp = [];
  % use predifined input
  if(nargin < 4)
    [x,X,Y,Yd] = getInput();
  end
  
  [z,Q] = DivDiffDoubleNodes(X,Y,Yd);
  y     = LIPNewton(x,Q,z);
end


% Get hardcoded input
function [x,X,Y,Yd] = getInput()
   x   = 1.5;
   X   = [1.3 1.6 1.9];
   Y   = [0.6200860 0.4554022 0.2818186];
   Yd  = [-0.5220232 -0.5698959 -0.5811571]; 
end