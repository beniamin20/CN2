% Calculeaza epsilonul masinii
function result = myEps()
  result = 1;
  n = 2;
  while((result + 1) != 1)
     previous = result;  
     result = 1/n;
     n = n * 2;
  endwhile
  result = previous;
endfunction