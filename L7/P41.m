% When in dobut use the debugger
% function [Hp,y] = Hermite(x,X,Y,Yd,err)
x   = 0.25;
X   = [0 1 2];
Y   = [];
Yd  = [];

for(i=1:length(X))
  Y(i) = Yd(i) = exp(X(i));
end

% ra - result aproximation
% rr - real result
ra = Hermite(x,X,Y,Yd)
rr = exp(x)
