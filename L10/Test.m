a = 1; b = 2; n = 10;
f = @(x) 1/x;
IntegrateTrapezoidal(f,a,b,n)
IntegrateSimpson(f,a,b,n)
IntegrateRectangles(f,a,b,n)