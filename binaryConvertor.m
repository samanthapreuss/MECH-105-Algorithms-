function [base2] = binaryConvertor(base10)
%binaryConvertor A simple function to convert a base10 number to binary
%   Inputs:
%       base10 - A number in base10
%   Outputs:
%       base2 - The base10 number converted to binary
%to start off
if base10 == 0 
   base2 = 0 
elseif base10==1 
    base2 = 1 
elseif base10 == 2 
    base2= [1 0]
else 
    %our two binary values
    z=0;
    o=1;
 base10=round(base10); %if base10 is a decimal, round

 %If there is a remainder after operation, add 1 to binary sequence
while z == 0
     if base10/2 > 0
          if base10/2 ~= round(base10/2)
               base2(o) = 1;
          end
          %If no remainder, add 0 
          if base10/2 == round(base10/2)
               base2(o) = 0;
          end
     end

     if base10/2 < 1 
          base2(o) = 1;
          z = 1; %terminating while loop
     else
          o=o+1;
          base10 = floor(base10/2);
     end
end

newbase2=zeros(1,length(base2));
for o = 1:length(base2)
     newbase2(o) = base2((length(base2)-o)+1);
    
end
 base2=flip(base2);
end
end
