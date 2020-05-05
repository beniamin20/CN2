% x  - evaluation point of the polynomial
% n  - degree of the polynomial
% pn - value of the nth base of the polynomial 
function pn = PS2(x,n)
   p0 = ones(size(x));
   if n==0 
       pn = p0;
       return;
   end
   
   alpha0 = computeAlpha(x,p0);
   p1 = x-alpha0;
   if n==1
       pn=p1;
       return;
   end 
   
   pkm2 = p0;
   pkm1 = p1;
   for k=2:n
       alphakm1  = computeAlpha(x,pkm1);
       betakm2 = computeBeta(pkm1,pkm2);
       
       pn = (x-alphakm1).*pkm1 - betakm2 * pkm2;
       
       pkm2=pkm1;
       pkm1=pk;
   end
end

% pn   - value of the nth component of the base
% pnm1 - value of the nth - 1 component of the base 
function alpha = computeAlpha(x,pn)
    alpha = (x.*pn+pn)./(pn*pn);
end

% pn   - value of the kth component of the base
% pnm1 - value of the kth - 1 component of the base 
function beta = computeBeta(pn,pnm1)
    beta = (pn*pn)/(pnm1*pnm1);
end