% SOLVE CENSUS PROBLEM USING EXPONENTIAL MODEL y=K*exp(lambda*x)
% xg - x general evaluation years used to build the graph
xg = (1890:1:2019)';
% x  - years for which population prediction was specifically requested
x = [1975 2015];

% census years
X = (1900:10:2010)';
% population
Y = [75.995 91.972 105.711 123.203 131.669 150.697 179.323 203.212 226.505 249.633 281.422 308.786]';

% compute coefficients
c = polyfit(t,log(Y),1);
K = exp(c(2));
lambda = c(1);

% compute predictions
f  = @(x) K*exp(lambda*x);
yg = f(xg);
y  = f(x);

% Graphic representation
plot(X,Y,'o',xg,yg,'-',x,y,'*')
for i=1:length(x)
 text(x(i),y(i)-20,num2str(y(i)))
end