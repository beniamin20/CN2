% When in doubt use the dubugger.
n = 30; a = -1; b = 1;

% generate Runge(x) graph
x = a:0.01:b;
y = abs(x);
plot(x,y);
hold on;

% generate xc Chebyshev nodes and Runge(xc)
xc = sort(cos((0:n)'*pi/n))*(b-a)/2+(a+b)/2;
xc = xc';
yc = abs(xc);
plot(xc,yc,'og',"markersize",10);

% generate (x,y) for interpolation arguments
X  = a:0.2:b;
Y  = abs(X);

% compute interpolation for chebisev nodes
yc = ChebLagrange(X,Y,xc);
plot(xc,yc,'g');

% compute interpolation for echidistant nodes
xe = linspace(a,b,n);
ye = ChebLagrange(X,Y,xe);
plot(xe,ye,'r');