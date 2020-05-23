% Generate a random A(n,n) with a corespondent B(n,1)
% Used in a liniar ecuation system A*x = B
% It must have the solution x = [1 1 1 ... 1]' 
function [A,B] = generateSystem(n = 10)
  A = rand(n);
  B = sum(A,2);
end
