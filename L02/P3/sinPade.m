% sin(x) using Pade(m,k) or R(m,k) 
% @see theory from L1
function result = sinPade(x,m,k)
  % first quadrant simplification
  x = mod(x, 2 * pi);
  
  % A * x = B - @see theory from L1
  A = zeros(m,m);
  for i=m:m+k-1  
    row = i-m+1;
    for j=i:-1:i-k+1
      col = i-j+1;
      A(row,col) = sinNthDerivative(j)/factorial(j);
    endfor
  endfor
  % A
  
  % A * x = B - @see theory from L1
  B = zeros(m,1);
  for i =1:k
    B(i,1) = - sinNthDerivative(m+i)/factorial(m+i);
  endfor
  % B
  
  % A * x = B -> x = A \ B
  b = A \ B;
  b = [1;b];
  b = b';
  % b
  
  a = zeros(1,m + 1);
  for j=0:m
    s = 0;
    for l=0:j
       s = s + sinNthDerivative(j-l)/factorial(j-l) * b(l+1);   
    endfor
    a(j+1) = s;
  endfor
  % a
  
  % f(x) ~ Pm/Qk
  % Pm = Sum a(i)*x^i , i=0:m
  % Qk = Sum b(j)*x^j , j=0:k
  Pm = 0;
  for i = 1:m+1
    Pm = Pm + a(i) * x^(i-1);
  endfor
  % Pm
  
  Qk = 0;
  for i = 1:k+1
    Qk = Qk + b(i) * x^(i-1);
  endfor
  % Qk
  
  result = Pm / Qk
endfunction