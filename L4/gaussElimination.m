function [L,U,P, b] = gaussElimination(A, b)
  % extend matrix A with values of b
  A = [A b];
  % n - number of rows. m - number of columns
  [n,m] = size(A);
  I = eye(n);
  U = A; L = I; P = I;
    
  for(k=1:n-1)
    % Find the column of the best pivot
    i = findPositionOfMaxAbs(A,k);
    % Rearange upper trianghiular matrix
    aux = U(k,k:m);
    U(k,k:m) = U(i,k:m);
    U(i,k:m) = aux;
    % Rearange multiplicator matrix
    aux = L(k,1:k-1);
    L(k,1:k-1) = L(i,1:k-1);
    L(i,1:k-1) = aux;
    % Keep track of the change in the Permutation matrix
    aux = P(k,:);
    P(k,:) = P(i,:);
    P(i,:) = aux;
    for(j=k+1:n)
      % compute the multiplicator value
      L(j,k)   = U(j,k)/U(k,k);
      % Eliminate the values underneath U(k,k)
      U(j,k:m) = U(j,k:m) - L(j,k) * U(k,k:m);
    endfor
  endfor  
  % extract b from extended matrix U
  b = U(:,m);
  % revert matrix U to original size
  U = U(:,1:m-1)
endfunction

% Find the best pivot candidate
% The best pivot is the one with the highest absolute value
% A - given matrix. A * x = b
% Current iteration in Gauss Elimination
function i = findPositionOfMaxAbs(A, k)
  [n,m] = size(A);
  max = abs(A(k,k));
  i = k;
  for(j = k:m)
    maxCandidate = abs(A(k,j));
    if(maxCandidate > max) 
      i = j;
      max = maxCandidate;
    endif 
  endfor
endfunction


