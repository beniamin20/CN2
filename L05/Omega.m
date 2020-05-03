% spectralRadius - Spectral Radius of T Jacobi
% spectralRadius = 0 -> Omega = 0 -> GaussSiedel 
function result = Omega(spectralRadius = 0)
  result = 2/(1+sqrt(1-spectralRadius^(2)));
endfunction