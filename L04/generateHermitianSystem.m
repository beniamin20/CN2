% Generate a random positive defined Hermitian A(n,n) with a corespondent B(n,1)
% Used in a liniar ecuation system A*x = B
% It must have the solution x = [1 1 1 ... 1]'
function [A,B] = generateHermitianSystem(n=10)
  A = rand(n);
  A = A + A';
  A = A + max(sum(A,2))* eye(n);
  B = sum(A,2);
endfunction