%Cubica Hermite <=> construim un polinom de grad 3
%cunoscand x1 f1=f(x1) f1p=f'(x1) x2 f2=f(x2) f2p=f'(x2). Tangentele la
%grafic sunt date de derivatele de ordin 1.
% de exemplu pentru functia f(x) = sin(x) putem lua
% x1=0  f1=sin(0)=0 f1p=cos(0)=1
% x2=pi f2=sin(pi)=0 f2p=cos(pi)=-1
function CubHerm(x1,x2,f1, f2, f1p, f2p)
  [z,td]=difdivnd([x1,x2],[f1,f2],[f1p,f2p]);
  t=x1:0.01:x2;
  h=pNewton(td,z,t);
  plot(t,h)
end