X = [0 1 2 3];
Y = [-4 0 4 -2]; 
n = 1;

expected = polyfit(X,Y,n)
actual = FindLeastSquaresPolynomialCoeff(X,Y,n)
