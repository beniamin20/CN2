% Reprezentam grafic sin(x) pe [0,pi] cu negru
x_graph=0:0.01:pi;
y_garph=sin(x_graph);
plot(x_graph,y_garph,'k')
hold on

% Reprezentem SplineComplete cu rosu
X = [0 pi/10 pi/2 pi]; Y = [0 sin(pi/10) sin(pi/2) 0]; Yd = [1, -1]; 
x = X(1):0.01:X(end);

[c,y] = SplineComplete(X,Y,x,Yd(1),Yd(2));
plot(x,y,'r');

% Reprezentem SplineNatural cu albastru
[c,y] = SplineNatural(X,Y,x);
plot(x,y);

% Reprezentem SplineDeBor cu verge
[c,y] = SplineNatural(X,Y,x);
plot(x,y,'g');


