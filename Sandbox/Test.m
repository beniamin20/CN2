f = @(x) 2*x*besselj(1,x)-besselj(0,x)=0;
fd = diff(f);
err = 0.0001;
nmax = 100;
x1 = [0.3 0.5 1];

Newton(f,fd,x1,err,nmax)