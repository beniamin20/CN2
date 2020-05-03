% Compute car distance and speed using Hermite
time = [0 3 5 8 13];
distance = [0 225 383 623 993];
speed =[75 77 80 74 72];

dt = 0.1; % delta time
t1  = 10;
t2 = t + dt;
t = [t1 t2];

disp("Compute using Hermite");
% compute the distance at t = 10
d = Hermite(t,time,distance,speed);
d(1)
% Compute speed using formula s = delta distance / delta time
% where delta represents the difference
% compute the speed
s = (d(2)-d(1)) / dt


disp("Compute using Hermite Cubic");
% Hermite(x,X,Y,Yd)
t2 = t + dt;
d = Hermite([t, t2],[8,13],[623,993],[74,72]);
d(1)
s = (d(2)-d(1))/dt
