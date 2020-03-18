function result = P1B()
  A = [10 7 8 7; 7 5 6 5; 8 6 10 9; 7 5 9 10];
  B = [32; 23; 33; 31];
  x = A \ B;
  
  Ap = [10 7 8.1 7.2; 7.08 5.04 6 5; 8 5.98 9.89 9; 6.99 4.99 9 9.98];
  xp = Ap \ B;
  
  input_absolute_error = norm(A - Ap);
  input_relative_error = input_absolute_error / norm(A)
  output_absolute_error = norm(x - xp)
  output_relative_error = output_absolute_error / norm(x)
  amplification_factor = output_relative_error / input_relative_error
endfunction