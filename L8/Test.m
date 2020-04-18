x   = 1.5;
X   = [1.3 1.6 1.9];
Y   = [0.6200860 0.4554022 0.2818186];

[c,y] = SplineNatural(X,Y,x);
y
spline (X, Y,x)