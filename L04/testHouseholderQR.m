
A = [1 2; 3 4];
[Q_expected, R_expected] = qr(A);
[R,Q] = HouseholderQR(A);
  
Q_expected
Q
  
R_expected
R