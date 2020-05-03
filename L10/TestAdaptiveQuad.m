a = 1; b = 2;
f = @(x) 1/x;
e = 0.00001;

AdaptiveQuad(f,a,b,e,@IntegrateRectangles)
AdaptiveQuad(f,a,b,e,@IntegrateSimpson)
AdaptiveQuad(f,a,b,e,@IntegrateTrapezoidal)