% Dataset 1
x   = 0.33;
X   = [0.3 0.32 0.35];
Y = [];
Yd = [];
for(i=1:length(X))
   Y(i)  = sin(X(i));
   Yd(i) = cos(X(i));
end

% compute Hermite Interpolation
[Hp, result] = Hermite(x,X,Y,Yd,eps);

raprox = result
r = sin(x)
err = abs(r-raprox)
disp("");

% Dataset 2
X = [X 0.34];
Y = [];
Yd = [];
for(i=1:length(X))
   Y(i)  = sin(X(i));
   Yd(i) = cos(X(i));
end

% compute Hermite Interpolation
[Hp, result] = Hermite(x,X,Y,Yd,eps);

raprox = result
r = sin(x)
err = abs(r-raprox)
