function [z,ni] = SuccesiveApprox(f,fd,x0,err,nmax)
%Newtonsyst - Newtons method for nonlinear equations in R and R^n
%Input
%f  - System of non linear function
%fd - System of non linear functions (derivative of f)
%x0 - initial aprox 
%err - Absolute error tolerance
%nmax - max number of iterations
%Output
%z -  Roots approximation
%ni - Number of iterations
    i = 1;
    xp = x0; % xp - x previous
    Lambda=fd(x0);
    while i <= nmax
        xc = xp - Lambda\f(xp); % xc - x current
        if norm(xc-xp,inf) < err
            z  = xc;
            ni = i;
            return;
        end
        xp = xc;
        i = i+1;
    end
    error('Could not compute inside the given number of iterations');
end