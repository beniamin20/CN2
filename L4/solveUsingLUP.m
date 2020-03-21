% Solve A * x = b using LUP decomposition
% Once we have LUP
% b = b*P
% (L*U)*x = b
% let y = U*x
% compute y by solving L*y = b using forward substitution 
% compute x by solving U*x = y using backward substitution 
function x = solveUsingLUP(A,b)
  [L,U,P] = AtoLUP(A);
  b = P*b;
  y = forwardSubst(L,b);
  x = backSubst(U,y);
endfunction