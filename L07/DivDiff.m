% When in dobut use the debugger
% Compute Newtons divided differences
% As per indications received from Prof. Trambitas
% We only use the first line of divided diferences table.
% F(X) = Y
% X - known data points
% Y - konwn values for known data points
% Q - Divided Diferences. Q(1) = Y(1)
function [Q,z] = DivDiff(X,Y)
  m = length(X);
  Q = zeros(m,m);
  Q(:,1) = Y';
  
  for j=2:m
     for i=1:(m-j+1)
        num = Q(i+1,j-1) - Q(i,j-1);
        den = X(i+j-1) - X(i);
        Q(i,j) = num / den;
     end
  end
  % Q(1) contains Y(1)
  Q = Q(1,1:end);
  z = X;
end