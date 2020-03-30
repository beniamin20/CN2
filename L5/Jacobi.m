function x = Jacobi(A,b, err = eps)
  % sanity check
  MAX_ITERATIONS = 1000;
  current_iteration = 0;
  % n - no of ecuations
  n = size(A,1);
  % x - initial aproximation
  x_previous = x_curent = zeros(n,1);
  % M - diagonal matrix
  M = diag(diag(A));
  % N - 0 on the diagonal, -A in rest
  N = M - A;
  
  do
    current_iteration++;
    x_previous = x_curent;
    x_curent   = M\(N*x_previous+b);
   
    err_curent = norm(x_curent-x_previous,inf)/norm(x_curent,inf);
  until(err_curent < err || current_iteration > MAX_ITERATIONS)
  
  x = x_previous;
endfunction