function result = P1A()
  A = [10 7 8 7; 7 5 6 5; 8 6 10 9; 7 5 9 10];
  B = [32; 23; 33; 31];
  x = A \ B;
  
  Bp = [32.1; 22.9; 33.1; 30.9];
  xp = A \ Bp;
  
  input_absolute_error = norm(Bp - B)
  input_relative_error = input_absolute_error / norm(x)
  
  output_absolute_error = norm(xp - x)
  output_relative_error = output_absolute_error / norm(x)
  amplification_factor = output_relative_error / input_relative_error
endfunction