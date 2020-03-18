% For 3x^3 + 2x^2 + x + 3 
% A = [3 2 1 3]
% This is the way the native roots function expects the parameters
function result = P5(x = 2,n = 20)
  % Build A - coeficients
  A = [];
  for(i=1:n)
    term = 1/2^i;
    A = [A term];
  endfor
  evalPol = roots(A)
 
  % Construim derivatele polinomului intr-o matrice
  % Ad - A derivat
  Ad = A;
  for(i=1:n-1)
    % Adr - A derivat row
    Adr = [];
     for(j=1:n)
        if(j<=i)
          term = 0;
        else
          term = Ad(i,j-1) * (n-j+1);
        endif
        Adr = [Adr term];
     endfor
     Ad = [Ad; Adr];
  endfor
  % Remove first line of array
  Ad(1,:) = [];
  
  % Numarul de conditionare a unei radacini e
  % x * fdi(i) / f(x)
  % Unde fdi e f derivat de i ori
  % ncr - vector - numarul de conditionare a fiecarei radacini.
  % ncr(k) numarul de conditionare al radacinii k cu k = 1:n-1
  for(i=1:n-1)
    
  endfor
  result = Ad;
endfunction