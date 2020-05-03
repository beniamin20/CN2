% SOLVE USING ELIPTICAL MODEL x^2 = a*y + e
% Declare input
x = [-1.024940; -0.949898; -0.866114; -0.773392; -0.671372; -0.559524; -0.437067; -0.302909; -0.159493; -0.007464];
y = [-0.389269; -0.322894; -0.265256; -0.216557; -0.177152; -0.147582; -0.128618; -0.121353; -0.127348; -0.148895];

% Build equations
A2=[y,ones(size(x))];
b = x.^2;

% Compute coefficients
coef=A\b;
a=coef(1); e=coef(2);

% Draw figure
u=linspace(min(x),max(x),20);
v=linspace(min(y),max(y),20);
[X,Y]=meshgrid(u,v);
Z=a*Y+e-X.^2;
contour(X,Y,Z,[0,0]); hold on
plot(x,y,'ro')

% Draw figure 2
figure()
plot(x,y,'ro'); hold on
u=linspace(-2,2,40);
v=linspace(-3,0,40);
[X,Y]=meshgrid(u,v);
Z=a*Y+e-X.^2;
contour(X,Y,Z,[0,0]);

% Compute error
err=sum((a*y+e-x.^2).^2)^(1/2);
errb=norm(a*y+e-x.^2);

% Se observ? c? modelul eliptic este mai probabil (are eroarea mai mic?)
disp(err,errb);

