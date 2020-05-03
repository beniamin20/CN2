function result = Test()
  disp("Grafic pt f(x) = e^x. (T2f) (x), (T3f) (x), (T4f) (x), (T5f) (x)");
  my_exp_values = MyExp(1,5);
  n_values = 1:6;
  plot (n_values,my_exp_values);
  title ("Exponentiala");
  xlabel ("n");
  ylabel ("Tn(f)(x)");
  
  disp("Grafic pt f(x) = e^x. (T2f) (x), (T3f) (x), (T4f) (x), (T5f) (x)");
  my_ln_values = Ln1PlusX(1,5)
  plot (n_values,my_ln_values);
  title ("Ln1PlusX");
  xlabel ("n");
  ylabel ("Tn(f)(x)");
endfunction
