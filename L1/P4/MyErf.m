% Am integrat folosind indicatia
% x0 - Punctul in care este evaluata functia
function result = MyErf(x0)
  e = MyExp(1);
  result = 2/sqrt(pi) * e^-(x0^2);
end