% Function call
% [expected_result, result] = testForwardSubst()
function testForwardSubst()
  % Test data can be computed with pen and paper
  % Example taken from https://bit.ly/395H8Y4
  L = [1 0 0; -2 1 0; -1 1 1];
  b = [-1; -7; -6];
  
  expected_result = [-1; -9; 2];
  result = forwardSubst(L,b);
endfunction