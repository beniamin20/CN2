x   = 1.5;
X   = [1.3 1.6 1.9];
Y   = [0.6200860 0.4554022 0.2818186];
Yd  = [-0.5220232 -0.5698959 -0.5811571]; 


disp("Natural Spline");
[c,y] = SplineNatural(X,Y,x);
y

disp("Complete Spline");
[c,y] = SplineComplete(X,Y,x,Yd(1),Yd(3));
y

