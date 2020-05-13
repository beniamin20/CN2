% P1
f = @(x) [x(1)^2+x(2)^2-1; x(1)^3-x(2)];
fd = @(x) [2*x(1), 2*x(2); 3*x(1)^2, -1];

x0=[1;1]; ea=1e-8; er=0; nmax=20;
[z,ni]=Newtonsyst(f,fd,x0,ea,er,nmax)