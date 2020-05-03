% Calculeaza derivata de ordin n a functiei data in punctul x0
function result = MyErfNthDerivative(n,x0)
  if n == 0
    result = MyErf(x0);
    return;
  end
  e = MyExp(1);
  result = (-1)^(n-1) * e^-(x0^2) *  (2^n) * x0^(n-1) * 1/sqrt(pi);        
end