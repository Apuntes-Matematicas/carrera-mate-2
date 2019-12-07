% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria
%
% Exercise 6 a): Exploring MATLAB functions.
%
% MAIN SCRIPT.

% We use the toeplitz command in order to create a 5x5 symmetric matrix.
A = toeplitz(1:5);

% We obtain the PA=LU factorization with the following MATLAB command.
[L,U,P] = lu(A);

% We display this information to the user. We also add a line that displays
% the absolute error of our factorization (the error being the euclidean
% norm of P*A-L*U). We also add some input messages that stop the program
% from rushing.
fprintf('\nThis are the factors obtained for the PA=LU factorizazion:\n');

fprintf('\nA = toeplitz(1:5) =\n');
disp(A);
input('Press enter to continue.\n');

fprintf('P =\n');
disp(P);
input('Press enter to continue.\n');

fprintf('L =\n');
disp(L);
input('Press enter to continue.\n');

fprintf('U =\n');
disp(U);
fprintf('Absolute error = %9.8e\n\n', norm(P*A - L*U,2));

stop = input('Press enter to continue.\n');

% We now create the main loop of the program. While the user is in this
% loop, the program will solve the corresponding linear systems. If the
% user inputs a 0 or a flag different from 1, 2, 3 or 4, the program will
% exit the loop.
flag = -1;
while flag ~= 0
    
    % We tell the user what linear systems can be solved and ask for the
    % flag.
    fprintf('What linear system do you want so solve? (A=toeplitz(1:5))\n');
    fprintf('Enter 1 for b = [0; 2; 0; 0; 1]\n');
    fprintf('Enter 2 for b = [9; 4; 2; 0; -1]\n');
    fprintf('Enter 3 for b = [10^-3; -0.33; 1; 1; 0]\n');
    fprintf('Enter 4 for another vector.\n');
    fprintf('Enter 0 to quit.\n');
    flag = input('\nVector b: ');
    
    % If the flag is 1, 2, 3 or 4 we solve the predifined systems with our
    % own function sls_lup (solve linear system with lup decomposition).
    % Otherwise we exit the loop.
    if flag == 1
        b = [0; 2; 0; 0; 1];
        sls_lup(L,U,P,b);
        
    elseif flag == 2
        b = [9; 4; 2; 0; -1];
        sls_lup(L,U,P,b);
        
    elseif flag == 3
        b = [10^-3; -0.33; 1; 1; 0];
        sls_lup(L,U,P,b);
    
    % If the flag is 4 we ask the user for a column vector b and solve the
    % system Ax=b.
    elseif flag == 4
        fprintf('\nEnter a column vector b (5x1). Example: [0; 2; 0; 0; 1]\n');
        b = input('\nb = ');
        sls_lup(L,U,P,b);
    
    % If the flag is 0 or any other input we exit the loop.
    else
        break
    end
    
    % If the user hasn't exit the loop, we wait until input is received in
    % order to start the next loop.
    stop = input('\nPress enter to continue.\n');
end