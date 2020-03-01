function result = PadeExp(x,m,k)
  A = zeros(m,m);
  for i=m:m+k-1  
    row = i-m+1;
    for j=i:-1:i-k+1
      col = i-j+1;
      %printf("%d%d ", row,col);
      %A(row,col) = j;
      A(row,col) = NthDerivativeExp(j)/factorial(j);
    endfor
    %disp("");
  endfor
  A
  
  B = zeros(m,1);
  for i =1:k
    B(i,1) = - NthDerivativeExp(m+i)/factorial(m+i);
  endfor
  B
  
  b = A \ B;
  b = [1;b];
  b = b';
  b
  
  a = zeros(1,m + 1);
  termPrecedent = 0;
  for i=1:m + 1
    a(i) = termPrecedent + NthDerivativeExp(i-1)/factorial(i-1) - (i-1)*b(i);
    termPrecedent = a(i);
    % a(i) = NthDerivativeExp(i-1)/factorial(i-1) - (i-1)*b(i);
  endfor
  a
  
  Pa = 0;
  for i = 1:m+1
    Pa = Pa + a(i) * x^(i-1);
  endfor
  Pa
  
  Pb = 0;
  for i = 1:k+1
    Pb = Pb + b(i) * x^(i-1);
  endfor
  Pb
  
  result = Pa/Pb
endfunction
