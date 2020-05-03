% Vandermonde
% Pt x = (x1, x2, x3 .. xn)
% V(x) = [ 1 2 n; x1 x2 .. xn; x1^2 x2^2 .. xn^2; ...; x1^n-1 x2^n-1 ... xn^n-1] 
function result = P3A(n = 10)
  % construim vectorul t
  t = [];
  for k = 1:n
    term = -1 + (k * 2/n);
    t = [t term];
  endfor
  
  % Construim matricea Vandermonde
  V = [];
  for i = 1:n
    row = [];
    for j = 1:n
      term = t(j)^(i-1);
      row = [row term];
    endfor
    V = [V; row];
  endfor
  
  % Cebisev norm. p = inf
  my_cond = norm(V,inf) * norm(inv(V),inf)
  native_cond = cond(V,inf)
endfunction