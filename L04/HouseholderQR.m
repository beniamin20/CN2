%HouseholderQR - QR decomposition using Househoulder reflections
%call [R,Q] = HouseholderQR(A)
%A mxn matrix, R upper triangular, Q orthogonal
function [R,Q] = HouseholderQR(A)
  [m,n]=size(A);
  beta=zeros(n,1);
  for j=1:n
      % Compute HH reflection vector
      [v,beta(j)]=house(A(j:m,j));
      A(j:m,j:n)=A(j:m,j:n)-beta(j)*v*(v'*A(j:m,j:n));
      if j<m
          A(j+1:m,j)=v(2:m-j+1);
      end
  end
  R=triu(A(1:n,:));
  v=zeros(n,1);
  % Q is not requested. early return.
  if nargout==1
    return;
  end
  % compute Q
  Q=eye(m,n);
  for j=n:-1:1
    v(j:m)=[1;A(j+1:m,j)];
    Q(j:m,j:n)=Q(j:m,j:n)-beta(j)*v(j:m)*(v(j:m)'*Q(j:m,j:n));
  end
end

%HOUSE - Compute HH reflection vector
function [v,beta] = house(x)
  n=length(x);
  sigma=x(2:n)'*x(2:n);
  v=[1;x(2:n)];
  if n==1
      v=1; beta=0;
  else
      if sigma==0
          beta=0;
      else
          mu=sqrt(x(1)^2+sigma);
          if x(1)<=0
              v(1)=x(1)-mu;
          else
              v(1)=-sigma/(x(1)+mu);
          end
          beta=2*v(1)^2/(sigma+v(1)^2);
          v=v/(v(1));
      end
  end
end
