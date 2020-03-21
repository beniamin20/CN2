% test A to LUP
function testAtoLUP()
  A = [10 -7 0; -3 2 6; 5 -1 5];
  [L,U,P] = AtoLUP(A)
  expected_U = [10 -7 0; 0 2.5 5; 0 0 6.2]
  expected_L = [1 0 0; -0.5 1 0; 0.3 0.4 1]
  expected_P = [1 0 0; 0 0 1; 0 1 0]
endfunction