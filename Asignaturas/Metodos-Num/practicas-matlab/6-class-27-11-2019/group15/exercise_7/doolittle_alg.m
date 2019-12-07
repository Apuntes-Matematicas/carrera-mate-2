% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria
 
% Exercise 7: Doolittle decomposition to solve linear systems.
%
% PART 1: Implementation of the Doolittle matrix factorization algorithm.

% This functions takes as input a matrix A and returns its Doolittle LU
% factorization (in case it is possible to produce it, otherwise Matlab
% will return an error, but the main script handles this situation).
function [L,U]=doolittle_alg(A)

% We define n as the length of A.
n=length(A);

% We initialize the L and U as null matrices.
L=zeros(n);
U=zeros(n);

% The first row of U and first column of A don't depend on any previous
% values and thus we compute them with their respective formulas apart.
%
% Since L(1,1)=1 and L(1,i)=0 for all i>1, U's first row's elements
% coincide with A's first row's elements.
for j=1:n
    U(1,j)=A(1,j);
end

% Since U(1,1)=A(1,1) and U(i,1)=0 for all i>1, L's first column's
% elements are equal to A's first columns's elements divided by A(1,1).
for i=1:n
    L(i,1)=A(i,1)/A(1,1);
end

% Now, we are ready to compute the rest of elements of L and U.
for k=2:n
    
    % REMAINING ELEMENTS OF U: (applying the scalar product formula).
    for j=k:n
        U(k,j)=A(k,j)-L(k,1:k-1)*U(1:k-1,j);
    end
    
    % The elements in the main diagonal of L will be all ones.
    L(k,k)=1;
    
    % REMAINING ELEMENTS OF L: (applying the scalar product formula).
    for i=k+1:n
        L(i,k)=(A(i,k)-L(i,1:k-1)*U(1:k-1,k))/U(k,k);
    end
end