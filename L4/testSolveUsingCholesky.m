function testSolveUsingCholesky()
  A = [1 2 1; 2 5 3; 1 3 3]
  b = [4 10 7]'
  
  x = solveUsingCholesky(A,b)
  expected_x = [1 1 1]'
endfunction