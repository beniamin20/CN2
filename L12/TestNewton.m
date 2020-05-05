f    = @(x) cos(x) - x;
fd   = @(x) - sin(x) - 1;
x1   = pi/4;
err  = 0.0001;
nmax = 100;

Newton(f,fd,x1,eps,nmax)