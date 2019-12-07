% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria
%
% Exercise 6 b): Exploring MATLAB functions.
%
% CHOLESKY DECOMPOSITION SCRIPT.

% We define the following function for our main program. This function
% takes as input a matrix A and returns its Cholesky decomposition using
% the chol command. The function also displays information about the
% decomposition and the error made when computing it.
function C = chol_decompos(A)

    % We display the chosen matrix.
    fprintf('\nA = transpose(C)*C with:\n\n');
    fprintf('A =\n');
    disp(A);
    
    % We use the following trick to slow down the program.
    input('\nPress enter to compute its Cholesky factorization.\n');

    % We compute its Cholesky factorization and display it. We omit
    % displaying the transpose of C.
    %
    % In case that A is not positive definite, chol(A) will give us an
    % error. The main program will be able to handle this error and display
    % it to the user without stoping the flow of the program.
    C = chol(A);
    fprintf('C =\n');
    disp(C);
    
    % We use the following trick to slow down the program.
    input('\nPress enter to continue.\n');
    
    % We compute the absolute error (euclidean norm of A-transpose(C)*C).
    error = norm(A-transpose(C)*C,2);
    fprintf('Absolute Error = %9.8e\n\n', error);
    
    % We use the following trick to slow down the program.
    input('\nPress enter to continue.\n');
end