% Function call
% [expected_result, result] = testBackSubst()
function testBackSubst()
  % Example taken from Course 4
  U = [10 -7 0; 0 2.5 5; 0 0 6.2];
  b = [7; 2.5; 6.2];
  
  expected_result = [0; -1; 1]
  result = backSubst(U,b)
endfunction