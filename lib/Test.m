function result = Test()
  disp("######## TEST Taylor #######");
  disp("TaylorPolinomialAproximation(f,x,x0,n)");
  disp("TaylorPolinomialAproximation(ln(1+x),1,0,10)");
  f = @(x) log(1+x); x = 1; x0 = 0; n = 10;
  disp(TaylorPolinomialAproximation(f,x,x0,n));
  
  disp("");
  disp("TaylorPolinomialAproximation(f,x,x0,n)");
  disp("TaylorPolinomialAproximation(ln(1+x),1,0.1,10)");
  x0 = 0.1;
  disp(TaylorPolinomialAproximation(f,x,x0,n));
  
  disp("");
  disp("TaylorPolinomialAproximation(f,x,x0,n)");
  disp("TaylorPolinomialAproximation(ln((1+x)/(1-x),1,0.1,10)");
  f = @(x) log((1+x)/(1-x)); x = 0.5; x0 = 0.1;
  disp(TaylorPolinomialAproximation(f,x,x0,n));
  
endfunction
