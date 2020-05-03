% Problem 5
% Procedura calculeaza numarul total de termeni(ai polinomului) necesari pentru a
% calcula ln(1+x) cu o o anumita preciie

% x         - valoarea lui x
% a         - punctul in care se aproximeaza valoarea
% precision - precizia cu care se aproximeaza 

% Exemplu de parametri:
% TaylorLn1PlusXPrecission(1,0.2,1/10000);
function result = TaylorLn1PlusXPrecission(x,a,precision)
  i = 0;
  ifPrecisionReached = false;
  previousTerm = log(1+x);
 
  do
    i = i + 1;
    term = ((NthDerivative(i,a) / factorial(i)) * ((x-a)^i));
    isPrecisionReached = abs(term-previousTerm) <= precision;
    previousTerm = term;
  until(isPrecisionReached)
  result = i;
end