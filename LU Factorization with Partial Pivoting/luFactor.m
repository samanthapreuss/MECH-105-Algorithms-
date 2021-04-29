function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix

dimension=size(A);
if dimension(1) ~= dimension(2)
    error('Matrix must be square to continue')
end

%starting matrices
U = A;
P = eye(dimension);
L = zeros(dimension);

%iterate matrix A dimensions minus 1 
for i = 1:dimension(1)-1 
    
    %find position of max element in each column
    [r,c] = max(abs(U(i:dimension(1),i)));
    c = c+i-1;
    %Pivoting 
    U([i,c],:) = U([c,i],:);
    P([i,c],:) = P([c,i],:);
    L([i,c],:) = L([c,i],:);
    
    for j = i+1:dimension(1)
        
        %find multiplication factor
        t = U(j,i) / U(i,i);
        
        %elimination
          U(j,:)=U(j,:)-(U(i,:)*t);
        
          %store multiplication factors
        L(j,i) = t ;
    end 
end 
%output matrices 
L = L + eye(dimension);

%confirm correct decomposition
if P*A == L*U
    disp('decomposition complete')
P,L,U
end
