% SOLVE USING ELIPTICAL MODEL x^2 = a*y^2 + b*x*y + c*x + d*y + e.
% Declare input
x = [-1.024940; -0.949898; -0.866114; -0.773392; -0.671372; -0.559524; -0.437067; -0.302909; -0.159493; -0.007464];
y = [-0.389269; -0.322894; -0.265256; -0.216557; -0.177152; -0.147582; -0.128618; -0.121353; -0.127348; -0.148895];

% Build system of equations
A = [y.^2, x.*y, x, y, ones(size(x))];
b = x.^2;

% Compute coefficients
coef = A\b;
a=coef(1); b=coef(2); c=coef(3); d=coef(4); e=coef(5);

% Draw figure
u=linspace(min(x),max(x),20);
v=linspace(min(y),max(y),20);

[X,Y]=meshgrid(u,v);
Z=a*Y.^2+b*X.*Y+c*X+d*Y+e-X.^2;
contour(X,Y,Z,[0,0]); hold on
plot(x,y,'ro'); hold on


% Draw second figure
figure()
plot(x,y,'ro'); hold on
u=linspace(-2,2,40);
v=linspace(-3,0,40);
[X,Y]=meshgrid(u,v);
Z=a*Y.^2+b*X.*Y+c*X+d*Y+e-X.^2;
contour(X,Y,Z,[0,0]);

% Compute error
% Eroarea este norma diferent,ei dintre pozit, ia observat? s, i cea calculat?
err=sum((a*y.^2+b*x.*y+c*x+d*y+e-x.^2).^2).^(1/2);
errb=norm(a*y.^2+b*x.*y+c*x+d*y+e-x.^2);
disp(err);
disp(errb);

