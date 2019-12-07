% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria
%
% Exercise 6 b): Exploring MATLAB functions.
%
% MAIN SCRIPT

% We now create the main loop of the program. While the user is in this
% loop, the program will solve the corresponding linear systems. If the
% user inputs a 0 or a flag different from 1, ..., 7 and 8, the program
% will exit the loop.
flag = -1;
while flag ~= 0
    
    % We ask the user what kind of matrix A should be decomposed and store
    % the answer in a flag.
    fprintf('What linear system do you want so solve?\n');
    fprintf('\nEnter 1 for A = gallery(''moler'',5)');
    fprintf('\nEnter 2 for A = gallery(''toeppd'',5)');
    fprintf('\nEnter 3 for A = magic(5)');
    fprintf('\nEnter 4 for A = hilb(5)');
    fprintf('\nEnter 5 for A = pascal(5)');
    fprintf('\nEnter 6 for A = [6 16 21 33; 2 20 18 16; 2 18 19 21; 1 2 3 4]');
    fprintf('\nEnter 7 for A = rand(15,15)');
    fprintf('\nEnter 8 for another square matrix.');
    fprintf('\nEnter 0 to quit.');
    
    flag = input('\n\nMatrix A: ');
    
    % If the flag is a number from 1 to 8, we generate the corresponding
    % matrix. If it is 0 or any other input, we exit the loop.
    if flag == 1
        A = gallery('moler',5);
    elseif flag == 2
        A = gallery('toeppd',5);
    elseif flag == 3
        A = magic(5);
    elseif flag == 4
        A = hilb(5); 
    elseif flag == 5
        A = pascal(5); 
    elseif flag == 6
        A = [6 16 21 33; 2 20 18 16; 2 18 19 21; 1 2 3 4]; 
    elseif flag == 7
        A = rand(15,15);
    elseif flag == 8
        fprintf('\nInput a MATLAB command that generates a matrix.\n');
        A = input('Input: ');
    else
        break  
    end
    
    % If we reach this point of the loop that means that we have a matrix
    % A. Now we will try to compute its Cholesky decomposition.
    %
    % It could happen that A is not positive definite and we can not apply
    % Cholesky. In that case, MATLAB will output and error.
    %
    % It could also happen that the dimensions of the matrix and the vector
    % b (yet to be defined) don't match and MATLAB outputs and error.
    %
    % We could also find other errors when the user inputs a particular
    % vector b etc.
    %
    % We want to handle these errors in such a way that we still get
    % information from them but the flow of the program isn't stop. In
    % order to do this, we use MATLAB's try and catch statements. We will
    % try to execute some commands and when an error is catched, we will
    % perform certain operations (in our case restarting the loop).
    try
       
        % We computel, if possible, the cholesky factorization of A.
        C = chol_decompos(A);
        
        % If the decomposition gives us no error, we will now enter another
        % loop similar to the previous one. This time we will ask the user
        % an input for the vector b in order to solve the linear system
        % Ax=b with the Cholesky factorization.
        flag = -1;
        while flag ~= 0
            
            % We tell the user what linear systems can be solved and ask
            % for the flag.
            fprintf('What linear system do you want so solve?\n');
            fprintf('\nEnter 1 for b = [0; 2; 0; 0]');
            fprintf('\nEnter 2 for b = [9; 4; 2; 0]');
            fprintf('\nEnter 3 for b = [10^-3; -0.33; 1; 1]');
            fprintf('\nEnter 4 for b = [0; 2; 0; 0; 1]');
            fprintf('\nEnter 5 for b = [9; 4; 2; 0; -1]');
            fprintf('\nEnter 6 for b = [10^-3; -0.33; 1; 1; 0]');
            fprintf('\nEnter 7 for b = rand(15,1)');
            fprintf('\nEnter 8 for another b.');
            fprintf('\nEnter 0 to change the matrix A.');

            flag = input('\n\nVector b: ');

            % If the flag is a number from 1 to 8, we generate the
            % corresponding matrix. If it is 0 or any other input, we exit
            % this loop.
            if flag == 1
                b = [0; 2; 0; 0];
            elseif flag == 2
                b = [9; 4; 2; 0];
            elseif flag == 3
                b = [10^-3; -0.33; 1; 1];
            elseif flag == 4
                b = [0; 2; 0; 0; 1];
            elseif flag == 5
                b = [9; 4; 2; 0; -1];
            elseif flag == 6
                b = [10^-3; -0.33; 1; 1; 0];
            elseif flag == 7
                b = rand(15,1);
            elseif flag == 8
                fprintf('\nInput a MATLAB command that generates a vector b.\n');
                b = input('Input: ');
            else
                input('\nPress enter to restart.');
                break;
            end

            % At this point of the program, we are ready to solve the
            % system. We use our function sls_chol (solve linear system
            % with cholesky decomposition).
            sls_chol(C,b);
            
            % We reset the flag in order to perform another iteration.
            flag = -1;  
        end
        
    % If the matrix is not positive definite, dimensions of A and b don't
    % match or any other error happens, the program will execute the part
    % below.
    catch exception
        
        % We make a little sound to notice the user of the error.
        beep;
        
        % We display the error.
        fprintf('\nERROR: ');
        disp(exception.message);
        
        % We use the following trick to slow the program.
        flag = -1;
        input('\nPress enter to restart the program.\n');
        continue;
    end
    
    % We reset the flag in order to perform another iteration.
    flag = -1;
end