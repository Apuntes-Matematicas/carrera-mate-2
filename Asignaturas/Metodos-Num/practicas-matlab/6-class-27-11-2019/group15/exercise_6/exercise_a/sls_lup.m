% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria
%
% Exercise 6 a): Exploring MATLAB functions.
%
% SOLVE LINEAR SYSTEM (SLS) with LUP decomposition SCRIPT.

% We define the following function for our main program. This function
% takes as input: the PA=LU factorization of a matrix A, and b such that
% the linear system to be solved is Ax=b. This function will display to the
% user both the solution of the system and the error made when computing
% it.
function [sol,error] = sls_lup(L,U,P,b)

    % We display to the user the chosen system.
    fprintf('\nAx = b with:\n\n');
    fprintf('b =\n');
    disp(transpose(b));
    
    % We compute its solution and display it.
    sol = U\(L\(P*b));
    fprintf('x =\n');
    disp(transpose(sol));
    
    % We compute the absolute error (euclidean norm of Ax-b).
    error = norm(inv(P)*L*U*sol-b,2);
    fprintf('Absolute error = %9.8e\n\n', error);
end


