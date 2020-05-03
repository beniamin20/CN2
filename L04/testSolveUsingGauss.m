function testSolveUsingGauss()
  A = [10 -7 0; -3 2 6; 5 -1 5];
  b = [7; 4; 6];
  
  x = solveUsingGauss(A,b)
  expected_x = [0; -1; 1]
endfunction