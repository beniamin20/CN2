% Problema 1
f    = @(x) 2*x.*besselj(1,x)-besselj(0,x);
fd   = @(x) 3*besselj(1, x) - 2*x.*(besselj(1, x)./x - besselj(0, x));
err  = 0.0001;
nmax = 100;
x1   = [1 5 10];

Newton(f,fd,x1,err,nmax)

% Problema 2
ea=0.0001; er=0; nmax=300;
% Solutia ecuatiei calculata cu Maple x0=[32/3 ln(3/2) -6]
x0=[11 0.4 -5.9];

f = @(x) [x(1)*exp(x(2))+x(3)-10; x(1)*exp(2*x(2))+2*x(3)-12; x(1)*exp(3*x(2))+3*x(3)-18];
fd = @(x) [exp(x(2)), x(1)*exp(x(2)), 1; exp(2*x(2)), 2*x(1)*exp(2*x(2)), 2; exp(3*x(2)), 3*x(1)*exp(2*x(2)), 3];

Newtonsyst(f,fd,x0,ea,er,nmax)