% Known data points and values  
X = 1:10;
Y = sin(X);

% datapoints for which y needs to be aproximated
x = X(1):(X(end)-X(1))/100:X(end);
% compute aproximation using least square method
y = LSQDiscrete(x, X, Y, 5);

plot(X, Y, 'o', x, y, '-');