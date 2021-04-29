function[a1,a0,Sr,St,Sy,Syx,rsqrd] = LinearRegression(x,y)
% The function: LinearRegression uses Linear Least Squares Regression methods to fit a linear equation to a set of data.
%   It also provides the Residual errors associated with the Linear
%   Regression. 
%       INPUTS: 
%   x: array of independent variables
%   y: array of dependent variables 
%       OUTPUTS: 
%   a1: m, slope of line
%   a0: b(y0), y intercept
%   sr: regression sum of squares
%   st: square of the residual
%   syx: standard error of estimate
%   rsqrd: residual error (r^2)
%find dimensions of inputted vectors
[~,k] = size(x);
[~,d] = size(y);

%check (2) that x and y (independent and dependent variables) are equally
%spaced and therefore equally aligned
if k ~= d
    error('inputted x and y vectors are not the same length')
end

%intializers
xi = 0 ;
yi = 0 ;
xiyi = 0;
xi2 = 0 ;

%averages
ybar = sum(y)/k; 
xbar = sum(x)/k;

for i = 1:k 
    xi = xi + x(i);
    yi = yi + y(i);
    xiyi = xiyi + x(i)*y(i) ;
    xi2 = xi2 + x(i)^2 ;
    
    %slope 
    a1 = (k*xiyi - xi*yi)/(k*xi2 - (xi^2));
    
    %y intercept 
    a0 = ybar - (a1*xbar);
    
end 

%ERRORS 
Sr = 0 ;
St = 0 ;
for i = 1:k
    
    %sum of the squares
    Sr = Sr + (y(i) - a0 - a1*x(i))^2;
    
    %square of the residual
    St = St + (y(i)-ybar)^2;
    
end
%standard deviation
Sy = sqrt(St/(k-1));

%standard error of estimate
Syx = sqrt(Sr/(k-2));

%residual error (r^2)
rsqrd = (St-Sr)/St;

%answers 
fprintf('Line of best fit: y = %.8f*x + %.8f',a1,a0)
Sr,St,Sy,Syx,rsqrd
end

