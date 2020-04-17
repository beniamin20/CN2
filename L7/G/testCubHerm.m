%test CubHerm
%reprezentam grafic sin(x) pe [0,pi] cu negru
x_graph=0:0.01:pi;
y_garph=sin(x_graph);
plot(x_graph,y_garph,'k')
hold on
%reprezentem cubica Hermite cu albastru
CubHerm(0,pi,0, 0, 1, -1);