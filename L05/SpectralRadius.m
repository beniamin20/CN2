% For faster implementations see bellow link
% https://www.mathworks.com/matlabcentral/answers/378909-spectral-radius-of-matrix 
function result = SpectralRadius(A)
  result = max(abs(eig(A)));
endfunction