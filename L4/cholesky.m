% cholesky - Cholesky factorization
% call R = Cholesky(A)
% A - HPD matrix 
% R - upper triangular matrix
% To verify the acurancy of this algorithm R'*R === A
function R = cholesky(A)
  R = A; 
  [m,m] = size(A);
  
  for(k=1:m)
    for(j=k+1:m)
      R(j,j:m) = R(j,j:m) - R(k,j:m)*R(k,j)/R(k,k);
    endfor
    R(k,k:m) = R(k,k:m)/sqrt(R(k,k));
  endfor
  R = triu(R);
endfunction