% Reprezentati pe acelasi grafic f si polinomul sau de interplare Hermite
x   = 1.5;
X   = [1.3 1.6 1.9];
Y   = [0.6200860 0.4554022 0.2818186];
Yd  = [-0.5220232 -0.5698959 -0.5811571]; 
err = eps;

[Hp,y] = Hermite(x,X,Y,Yd,err);
Hp = Hp(1:length(X));

plot(X,Y,'ok');
hold on;
plot(X,Y,'k');

plot(X,Hp,'or');
plot(X,Hp,'r');
