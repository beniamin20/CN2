% SOLVE CENSUS PROBLEM USING THIRD ORDER POLYNOMIAL y = c0 + c1*t + c2*t^2 + c3*t^3
% xg - x general evaluation years used to build the graph
xg = (1890:1:2019)';
% x  - years for which population prediction was specifically requested
x = [1975 2015];

% census years
X = (1900:10:2010)';
% population
Y = [75.995 91.972 105.711 123.203 131.669 150.697 179.323 203.212 226.505 249.633 281.422 308.786]';

% Attempt dirrect fit
% Can not work with these coefficients.
c = polyfit(X,Y,3);

% Normalize the input
% mean() - sumarise data tendency
m=mean(X); 
% std()  - standard deviation
sd=std(X);

Xn  = (X-m)/sd;  % Xn  - X normalized
xgn = (xg-m)/sd; % xgn - x general normalized evaluation years
xn  = (x-m)/sd;  % xn - x normalized - years for which prediction were specifically requested

% compute normalized polynomial coefficients
cn=polyfit(Xn,Y,3);

% population predictions
yg = polyval(cs,xgn);
y  = polyval(cs,xn); 

plot(X,Y,'o',xg,yg,'-',x,y,'*')
for i=1:length(x)
 text(x(i),y(i)-20,num2str(y(i)))
end
title('U.S. Population', 'FontSize', 14)
xlabel('year', 'FontSize', 12)
ylabel('Millions', 'FontSize', 12)

