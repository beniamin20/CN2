% solve A * x = b using
% Gauss Elimination and backwardSubstitution
function x = solveUsingGauss(A,b)
  [L,U,P,b] = gaussElimination(A,b);
  x = backSubst(U,b);
end