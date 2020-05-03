% f   - f(x) the function to integrate. e.g. f = @(x) 1 + x.^2;
% a,b - Integration limits
% e   - Error tolerence
% g   - Integration method e.g @IntegrateRectangles @IntegrateSimpson ..
function I = AdaptiveQuad(f,a,b,e,g)
   n  = 4;
   I1 = g(f,a,b,n);
   I2 = g(f,a,b,n*2);
   if abs(I1-I2) < e 
       I=I2;
       return
   else
       I=AdaptiveQuad(f,a,(a+b)/2,e,g) + AdaptiveQuad(f,(a+b)/2,b,e,g);
   end
end