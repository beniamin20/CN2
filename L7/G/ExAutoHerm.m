%problema interpolare Hermite automobil
timp=[0 3 5 8 13];
distanta=[0 225 383 623 993];
viteza=[75 77 80 74 72];

[z,td]=difdivnd(timp,distanta,viteza);
T=10;

%cu Hermite
y=pNewton(td,z,T)
dt=0.1;
y1=pNewton(td,z,T+dt)
v=(y1-y)/dt
ygr=pNewton(td,z,0:0.01:13);
plot(0:0.01:13, ygr,'k')
hold on;

%cu Hermite pe portuni din Matlab
vh=interp1(timp,viteza, T,'pchip')
yh=interp1(timp,distanta, T,'pchip')

%cu Cubica Hermite
% CubHerm(x1,x2,f1, f2, f1p, f2p)
disp("Cubica Hermite");
CubHerm(8,13,623, 993, 74, 72);
[z,td]=difdivnd([8,13],[623,993],[74,72]);
y=pNewton(td,z,T)
y1=pNewton(td,z,T+dt)
v=(y1-y)/dt

