[A,b] = GenerateAb1();
x_jacobi  = Jacobi(A,b)
x_gauss   = GaussSiedel(A,b)
x_SOR     = SOR(A,b)

[A,b] = GenerateAb2();
x_jacobi  = Jacobi(A,b)
x_gauss   = GaussSiedel(A,b)
x_SOR     = SOR(A,b)