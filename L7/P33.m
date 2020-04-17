% Reprezentam grafic sin(x) pe [0,pi] cu negru
x_graph=0:0.01:pi;
y_garph=sin(x_graph);
plot(x_graph,y_garph,'k')
hold on

% Cubica Hermite <=> construim un polinom de grad 3
% Cunoscand x1 y1=f(x1) yd1=f'(x1) x2 y2=f(x2) yd2=f'(x2) 
% Tangentele la grafic sunt date de derivatele de ordin 1

% De exemplu pentru functia f(x) = sin(x) putem lua
% x1 = 0  y1=sin(0) = 0  yd1=cos(0) = 1
% x2 = pi y2=sin(pi)= 0  yd2=cos(pi)= -1

% Reprezentem cubica Hermite cu albastru
X = [0 pi]; Y = [0 0]; Yd = [1, -1]; 
x = X(1):0.01:X(2);
y = Hermite(x,X,Y,Yd);

plot(x,y);
