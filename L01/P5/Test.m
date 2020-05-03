function result = Test()
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
  disp("Nr termeni pt ln(2) cu 5 zecimalecorecte.");
  disp("TaylorPolinomialAproximation2(f_name,x,x0,p)");
  disp("TaylorPolinomialAproximation2(ln1px,1,0.1,0.000001)");
  disp(TaylorPolinomialAproximation2("ln1px",1,0.1,0.000001));
  
  disp("");
  disp("TaylorPolinomialAproximation3(f,x,x0,n)");
  disp("TaylorPolinomialAproximation3(ln((1+x)/(1-x),0.5,0,10)");
  disp(TaylorPolinomialAproximation3("lnraport",0.5,0,10));
  
  disp("");
  disp("Nr termeni pt ln((1+x)/(1-x)) cu 5 zecimalecorecte.");
  disp("TaylorPolinomialAproximation2(lnraport,0.5,0,0.000001)");
  disp(TaylorPolinomialAproximation2("lnraport",0.5,0,0.000001));
  
endfunction
