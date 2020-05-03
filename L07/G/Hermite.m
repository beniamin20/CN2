function y = Hermite(x,X,Y,Yd)
  [z,td] = difdivnd(X,Y,Yd);
  y = pNewton(td,z,[x]);
  yNew = LIPNewton([x],td,z)
  y = y(1);  
end