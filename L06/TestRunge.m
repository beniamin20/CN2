% When in doubt use the dubugger.
n = 10; a = -5; b = 5;

% generate Runge(x) graph
x = a:0.01:b;
y = 1./(1+x.*x);
plot(x,y);
hold on;

% generate xc Chebyshev nodes and Runge(xc)
xc = sort(cos((0:n)'*pi/n))*(b-a)/2+(a+b)/2;
xc = xc';
yc = 1./(1+xc.*xc);
plot(xc,yc,'og',"markersize",10);

% generate (x,y) for interpolation arguments
X  = a:0.5:b;
Y  = 1./(1+X.*X);

% compute interpolation for chebisev nodes
yc = ChebLagrange(X,Y,xc);
plot(xc,yc,'g');

% compute interpolation for echidistant nodes
xe = linspace(a,b,n);
ye = LagrangeBarycentric(X,Y,xe);
plot(xe,ye,'r');