% solve system of equations using cholesky decomposition
% GIGO. No validation is made for input variables.
% A*x = b
% R = cholesky(A);
% R'*R = A;
% R'*R*x = b;
% let y = R*x;
% R'*y = b - solve using forward substitution
% R*x = y - solve using backward substitution
function x = solveUsingCholesky(A, b)
  R = cholesky(A);
  y = forwardSubst(R',b);
  x = backSubst(R,y);
end