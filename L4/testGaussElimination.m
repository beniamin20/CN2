function testGaussElimination()
  % We use the example from the C4 to verify that we 
  % corectly implemented the Gauss Elimination
  A = [10 -7 0; -3 2 6; 5 -1 5];
  b = [7; 4; 6];
  [L,U,P,b] = gaussElimination(A,b);
  expected_L = [1 0 0; 0.5 1 0; -0.3 -0.4 1]
  L
  expected_U = [10 -7 0; 0 2.5 5; 0 0 6.2]
  U
  expected_P = [1 0 0; 0 0 1; 0 1 0]
  P
  expected_b = [7; 2.5; 6.2]
  b
endfunction