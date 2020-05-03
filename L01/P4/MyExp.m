% Aproximeaza cu o precizie de 5 zecimale valoarea functiei e^x folosind un polinom Maclaurin
% Pt ca folosim o serie Mclaurin e derivat de n ori in punctul 0 va fi tot timpul 1
function result = MyExp(x)
   prevResult = 0;
   % e^0 = 1
   result = 1;
   i = 0;
   do
     i++;
     prevResult = result;
     term = x^i / factorial(i);
     result = result + term;
   until(abs(result - prevResult) < 0.000001)
end