f    = @(x) cos(x) - x;
fd   = @(x) - sin(x) - 1;
x1   = [pi/4, pi/6];
err  = 0.001;
nmax = 200;

Newton(f,fd,x1,eps,nmax)