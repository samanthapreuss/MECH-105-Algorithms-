function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
    %[root,fx,ea,iter] = falsePostition(func,xl,xu,es,maxit,p1,p2,…):
%INPUTS:
% func = function in question
% xu = upper guess
% xl = lower guess
% es = desired relative error (defaults to 0.0001%)
% maxit = maximum number of iterations to use (defaults to 200)
% varargin = additional parameters the function needs

%OUTPUTS:
% root = estimated root location
% fx = value of function at root
% ea = approximate relative error (%)
% iter = number of iterations performed

%hello dummy (error checking)

if nargin < 3 
    error('Must have at least 3 inputs, make sure you have entered function, lower guess, and upper guess')
end
if nargin < 4 || isempty(es)
    es = 0.000001; %default to 0.001% if no desired relative error is entered
end
if nargin < 5 || isempty(maxit)
    maxit=200; %default to 200 iterations if not specified 
end

if xl>xu || func(xl)*func(xu) > 0 
    error('Error:No sign change present in current guesses or lower bound exceeds upper')
end 
%here we go  

iter = 0;
ea = 100;


while maxit >= iter && ea > es
    %intial values 
fxl = func(xl);
fxu = func(xu);

xr = xu - (fxu*(xl-xu))/(fxl-fxu);

if func(xr) == 0 
    root=xr;
    ea=0;
    iter = iter+1;
    
    
elseif fxl*func(xr) < 0 
    oldxu = xu;
    xu = xr;
    iter = iter+1;
    
   if xr ~=0
    ea = abs((xu-oldxu)/xu)*100;
   end
    
elseif fxu*func(xr) < 0 
    oldxl = xl;
    xl = xr;
    iter= iter+1;
    
     if xr ~=0
    ea = abs((xl-oldxl)/xl)*100;
     end

end

if ea <= es || iter >= maxit
    
    root = xr 
    fx= func(xr)
    ea
    iter
    

    end 
end


end
