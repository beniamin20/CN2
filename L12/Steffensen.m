% g    - func deduced from f. g(x) = x. Transform f(x) to have x on one side
% p0   - strating aprox. value
% err  - error tolerance
% nmax - maximum number of iterations
function p = Steffensen(g,p0,err,nmax)
   i = 1;
   while i <= nmax
       p1 = g(p0);
       p2 = g(p1);
       p  = p0 - ((p1-p0).^2 /(p2 - 2*p1 + p0));
       if abs(p-p0) < err
           return; 
       end
       i = i+1;
       p0 = p;
   end
   error("Cant compute p in given number of iterations with given tolerance");
end