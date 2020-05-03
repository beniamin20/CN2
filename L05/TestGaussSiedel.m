% Test Gauss Siedel implementation
A = [2 0 1; 0 2 1; 0 1 2];
b = [6; 3; 4.5];

expected_x = [2; 0.5; 2]
x = GaussSiedel(A,b)