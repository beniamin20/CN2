% When in doubt use the dubugger.
% Test Practical Problems P1. P2. P3
format short g;

% P1
% known data points.
X = [1900 1910 1920 1930 1940 1950 1960 1970 1980 1990 2000];
Y = [75995 91972 105711 123203 131669 150697 179323 203212  226505  249633 281422];

% data points to compute.
x = [1975 2010];
y = LagrangeBarycentric(X,Y,x);

disp("P1");
result = [x' y']

% P2
% known data points.
X = [1 1.1 1.2 1.3 1.4];
Y = exp(X.^2) - 1;
% data points to compute.
x = [1.25];
y = LagrangeBarycentric(X,Y,x);

disp("P2");
result = [x' y']

% P3
% known data points.
X = [81 100 121 144];
Y = [9 10 11 12];
% data points to compute.
x = [115];
y = LagrangeBarycentric(X,Y,x);

disp("P3");
result = [x' y']









