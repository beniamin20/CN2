% Procedura aproximeaza valoarea functiei e^x 
% dezvoltand functia exponentiala(e) intr-o serie  Maclaurin
% O serie Maclaurin este o serie Taylor cu X0 = 0

% Formula unei serii Taylor:
% Serie de la n=0 -> inf din
%     (f(Xo) deriv de n ori / !n) * (X-X0)^n

% Derivata de n ori a functiei exponentiale in punctul 0 este 1
% (e^x)' = e^x, dc x=0 -> e^0 = 1

% Astfel seria se transforma in: 
% Serie de la n=0 -> inf din: (x^n)/!n
function rezultat = Exponentiala(x)
   % Primul termen al seriei este 1 oricare ar fi x
   % x^0/!0 = 1/1 = 1
   rezultat = 1;
   rezultatPrecedent = 0;
   precizie = 1/1000;
   i = 1;
   
   % Calculam suma cu o precizie de 3 zecimale
   while ((rezultat - rezultatPrecedent) > precizie && i < 100)
      rezultatPrecedent = rezultat;
      rezultat = rezultat + (x^i / factorial(i));
      i = i + 1;
   endwhile
end