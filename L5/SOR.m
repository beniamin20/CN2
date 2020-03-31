function result = SOR(A,b, err = eps)
  % sanity check
  MAX_ITERATIONS = 1000;
  current_iteration = 0;
  
  % n - no of ecuations
  n = size(A,1);
  x_previous = x_curent = zeros(n,1);
  
  % compute Tj - T Jacobi. 
  % Used to compute optimum w (Omega)
  D = diag(diag(A));
  L = D - tril(A);
  U = D - triu(A);
  Tj = D \ (L+U);
  
  % compute spectral radius of Tj
  sr = max(abs(eig(Tj)));
  
  % compute w - optimum omega
  w = 2/(1+sqrt(1-sr^(2)));
  % w = 1;
  
  T = (D-w*L)^(-1) * ((1-w)*D + w*U);
  c = w*(D-w*L)^(-1) * w*b;
  
  do
    current_iteration++;
    x_previous = x_curent;
    x_curent   = T * x_previous + c;
   
    % err_curent = norm(b-A*x_curent,inf);
    % err_curent = norm(x_curent-x_previous,inf);
    err_curent = norm(x_curent-x_previous,inf);
  until(err_curent < err || current_iteration > MAX_ITERATIONS)
  
  result = x_previous;
endfunction