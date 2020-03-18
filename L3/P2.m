% Hilbert
function result = P2(n = 10)
  % We built the Hilbert matrix
  % Octave has a built in function for this hilb(n)
  H = [];
  for i = 1:n
    row = [];
    for j = 1:n
      row = [row 1/(j+i-1)];
    endfor
    H = [H; row];
  endfor
  
  % The conditioning of a matrix is norm(A * A^(-1))
  % Euclidian Norm. p = 2
  my_cond = norm(H) * norm(inv(H))
  native_cond = (H,2)
endfunction