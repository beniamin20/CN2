% Deduceti seria Taylor pentru arctangenta. Cati termeni sunt
% necesari pentru a obtine ?/4 cu 5 zecimale corecte.
function result = Test()
  disp("Seria Taylor pentru arctangenta");
  disp("atan(pi/4):");
  atan(pi/4)
  disp("MyAtan(pi/4, 0.000001):")
  [nNrTermeni,sum] = MyAtan(pi/4, 0.000001)
endfunction
