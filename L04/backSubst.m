% backward substitution
% U - upper triangular matrix
% b - right hand side vector
function x = backSubst(U,b)
  n = length(b);
  x = zeros(size(b));
  for k=n:-1:1
    x(k) = (b(k) - U(k,k+1:n) * x(k+1:n)) / U(k,k);
  end
end