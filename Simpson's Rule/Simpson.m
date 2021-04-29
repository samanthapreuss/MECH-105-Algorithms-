function [I] = Simpson(x,y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated

%I just like how this displays 
format short

%find dimensions of inputted vectors
[~,b] = size(x);
[~,d] = size(y);


%ERROR CHECKING

%check (1) that x (indepdent variable) vector is equally spaced
check = (x(2:b) - x(1:b-1));
if all(check == check(1))
    fprintf('Inputted array is equally spaced.')
    
else
    error('"X" Matrix is not equally spaced.')
end

%check (2) that x and y (independent and dependent variables) are equally
%spaced and therefore equally aligned
if b ~= d
    error('inputted x and y vectors are not the same length')
end


%2 POINTS CASE 
%case where only 2 points are given
if b == 2
    warning('Trapezoidal rule will be used to compute integral.')
    %apply Trap rule
    I = (x(2)-x(1))*((y(2)+y(1))/2);
end

%3 POINTS CASE
%case where three points are given
if b  == 3
    fprintf('Single application of Simpsons 1/3 rule will be used to compute')
    I = (x(3)-x(1))*((y(1) + 4*y(2) + y(3))/6);
end

%more complex problem
if b > 3
    I = 0; %intializer
    h = x(2)-x(1); %height
    n = b - 1;  % # of segments
    j = n/2; % # of calculations based on rule
    
    %odd interval case
    if rem(n,2) == 1
        warning('An odd number of intervals is detected, the trapezoidal rule will be used to complete last interval of estimate.')

        %trap rule for odd segment 
        I = h/2*(y(b)+y(b-1));
        j = (n-1)/2; %number of calculations that has to occur reduces by one segment 
    end
    
    %Simpson's 1/3
    for i = 1:j
        I = I + h/3 * (y(2*i-1)+4*y(2*i)+y(2*i+1));
    end
    
end
fprintf('Integral Estimate is %s\n',I)

end
