% Procedure evaluates the nth derivative of the given function f for the given value x
% f - function handle 
% x - float
% n - the derivative number
% Parameter example f = @(x) x.^4 | x = 2 | 2
function result = NthDerivative(f,x,n)
  if n == 0
    result = f(x);
    return;
  endif
  syms x_sym;
  f_sym = f(x_sym);
  for i = 1:n
    f_sym = diff(f_sym, x_sym);
  endfor
  nth_derivative = function_handle(f_sym);
  result = nth_derivative(x);
end