function result = PadeExp(x,m,k)
  A = zeros(m,m);
  % C doar de verificat ca indicele lui c se calculeaza corect
  for i=m:m+k-1  
    row = i-m+1;
    for j=i:-1:i-k+1
      col = i-j+1;
      % printf("%d%d ", row,col);
      % C(row,col) = j;
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
  for j=0:m
    s = 0;
    for l=0:j
       s = s + NthDerivativeExp(j-l)/factorial(j-l) * b(l+1);   
    endfor
    a(j+1) = s;
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
