% Cel mai mic numar nenormalizat reprezentabil in virgula flotanta
function result = minVFnenorm()
  result = 1;
  n = 2;
  while(result != 0)
    previous = result;
    result = result/n;
    n = n * 2;
  endwhile
  result = previous;
endfunction