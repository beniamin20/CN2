% Gauss Siedel is very much like the Jacobi method with the improvment that
% we want to imediatly use newer aproximations of x as soon as posible
% For example say we computed x1current and x2current 
% when computing x3 current, instead of using x1previous and x2previous
% we wish to use the more recent and better aproximated valus of x1,x2 
function x = GaussSiedel(A,b, err = eps)
  % sanity check
  MAX_ITERATIONS = 1000;
  current_iteration = 0;
  % n - no of ecuations
  n = size(A,1);
  % x - initial aproximation
  x_previous = x_curent = zeros(n,1);
  % M - diagonal matrix
  M = tril(A);
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