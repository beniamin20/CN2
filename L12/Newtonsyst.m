%Newtonsyst - Newtons method for nonlinear equations in R and R^n
%Input
%f  - System of non linear function
%fd - System of non linear functions (derivative of f)
%x0 - initial aprox 
%ea - Absolute error tolerance
%er - Relative error tolerance
%nmax - max number of iterations
%Output
%z -  Roots approximation
%ni - Number of iterations
function [z,ni] = Newtonsyst(f,fd,x0,ea,er,nmax)
  if nargin < 6, nmax=50; end
  if nargin < 5, er=0; end
  if nargin < 4, ea=1e-3; end
  
  xp=x0(:);   %x previous
  for k=1:nmax
      xc=xp-fd(xp)\f(xp); %x current
      if norm(xc-xp,inf)< ea+er*norm(xc,inf)
          z=xc; %succes
          ni=k;
          return
      end
      xp=xc;
  end
  error('Could not compute inside the given number of iterations');
end
