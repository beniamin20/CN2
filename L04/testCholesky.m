% function tests if cholesky decomposition works as expected
A = [1 2 1; 2 5 3; 1 3 3]

disp("Native implementation of cholesky");
Rn = chol(A)
  
disp("Custom implementation of cholesky");
R = cholesky(A)
  
disp("R' * R === A ?");
R' * R
