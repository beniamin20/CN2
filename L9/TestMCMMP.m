% Known data points and values  
X = 1:10;
Y = sin(X);
% base functions
phi = @(t)[ones(1, length(t)); t; t.^2; t.^3; t.^4; t.^5; t.^6];

% datapoints for which y needs to be aproximated
x = X(1):(X(end)-X(1))/100:X(end);
% compute aproximation using least square method
y = MCMMP(X, Y, phi, x);

plot(X, Y, 'o', x, y, '-');