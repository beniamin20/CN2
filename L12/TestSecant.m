f = @(x) cos(x) - x;
x1   = 0.5;
x2   = pi/4;
err  = eps;
nmax = 100;

Secant(f,x1,x2,err,nmax)