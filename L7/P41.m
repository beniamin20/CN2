% function [Hp,y] = Hermite(x,X,Y,Yd,err)
x   = 0.25;
X   = [0 1 2];
Y   = [];
Yd  = [];

for(i=1:length(X))
  Y(i) = Yd(i) = exp(X(i));
end

[Hp, result] = Hermite(x,X,Y,Yd,eps);

result_aproximation = result
result = exp(x)
