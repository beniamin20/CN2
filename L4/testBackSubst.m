% Function call
% [expected_result, result] = testBackSubst()
function [expected_result, result] = testBackSubst()
  U = [10 -7 0; 0 2.5 5; 0 0 6.2];
  b = [7; 2.5; 6.2];
  
  expected_result = [0; -1; 1];
  result = backsubst(U,b);
endfunction