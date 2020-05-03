% Romberg Algorithm
% a,b  - Integration limits
% NMAX - Maximum number of iterations
% e    - Error Tolerance
function I = Romberg(f, a, b, MAX, e)
    R = zeros(MAX,MAX);
    R(1,1) = ((b-a)/2) * (f(a) + f(b));
    
    for i=2:MAX
     % compute R(i,1)
     R(i,1) = computeRi1(R,f,a,b,i);
       
     % compute R(i,j) 
     for j=2:i
       p = 4^(j-1);  
       R(i,j) = (p*R(i,j-1)-R(i-1,j-1))/(p-1);
     end
      
     if abs(R(i-1,i-1) - R(i,i)) < e
       I = R(i,i);
       return;
     end
    end
    I = nan;
    disp("Can't compute with given error tolerance and MAX iterations");
end

% calculate Ri1
function result = computeRi1(R,f,a,b,n)
  s = 0;
  for i=1:power(2,n-2)
     s = s + f(a + (i-1/2) * computeHk(a,b,n-1));
  end
  result = (1/2) * (R(n-1,1) + computeHk(a,b,n-1) * s);
end

% Get deltaX or the height
function result = computeHk(a,b,k)
  result = (b-a) / power(2,k-1);
end