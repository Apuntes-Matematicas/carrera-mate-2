% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria
%
% Exercise 6 b): Exploring MATLAB functions.
%
% SOLVE LINEAR SYSTEM (SLS) with CHOLESKY decomposition SCRIPT.

% We define the following function for our main program. This function
% takes as input: the A=transpose(C)*C factorization of a matrix A, and b
% such that the linear system to be solved is Ax=b. This function will
% display to the user both the solution of the system and the error made
% when computing it.
function [sol,error] = sls_chol(C,b)

    % We display to the user the chosen system.
    fprintf('\nAx = b with:\n\n');
    fprintf('b =\n');
    disp(transpose(b));
    
    % We compute its solution and display it.
    sol = C\(transpose(C)\b);
    fprintf('x =\n');
    disp(transpose(sol));
    
    % We compute the absolute error (euclidean norm of Ax-b).
    error = norm(transpose(C)*C*sol-b,2);
    fprintf('Absolute Error = %9.8e\n\n', error);
    
    % We use the following trick to slow the program.
    input('\nPress enter to continue.\n');
end