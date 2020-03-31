% generate system of ecuations A*x = b
% A diagonal dominant matrix and x = [1 2 3 .. n]
function [A,b] = GenerateDiagonalDominantSystem(n = 10)
  A = rand(n);
  A = A + A';
  A = A + max(sum(A,2))*eye(n);
  b = A*[1:n]';
endfunction