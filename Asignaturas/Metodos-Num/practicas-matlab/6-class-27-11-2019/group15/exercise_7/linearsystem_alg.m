% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise 7: Doolittle decomposition to solve linear systems.
%
% PART 2: Implementation of a linear systems solver using L*U factorization
% with the Doolittle algorithm of part 1.
 
% System Ax=b can be written as (LU)x=L(Ux)=b. In order to obtain x
% we introduce an auxiliary vector y=Ux. Now, the system can be thought as
% Ly=b, which is much easier to compute due to L being triangular. After
% that, we will just have to calculate y=Ux, which is again a triangular
% system.
%
% This function takes as input the LU Doolittle factorization of a matrix
% A and a vector b and returns the solution of the linear system Ax=b using
% Doolittle's factorization.
function [x]=linearsystem_alg(L,U,b)

    % Defining our auxiliar variable y as explained before, since y=Ux we
    % get that Ly=b --> y=(L^-1)b and once we know y, y=Ux --> x=(U^-1)y.
    y=L\b;
    x=U\y;