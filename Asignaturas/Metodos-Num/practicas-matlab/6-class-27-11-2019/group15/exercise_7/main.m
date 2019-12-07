% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise 7: Doolittle decomposition to solve linear systems.
%
% PART 3: Main program where matrices are factorized using the Doolittle
% algorithm programmed in part 1 and linear systems are solved using the
% function of part 2.

% FIRST PART: Obtaining the Doolittle factorization of matrices.

% This will be the main loop of the program. We use a flag to determine
% what the user wants to do, and use the value flag=0 to quit the main
% loop.
flag = -1;
while flag ~= 0
    
    % We ask the user for the matrix A to be factorized and store the
    % answer in a flag.
    fprintf('\nWhat matrix do you want to get factorized?\n');
    fprintf('\nEnter 1 for A = gallery(''moler'',5)');
    fprintf('\nEnter 2 for A = gallery(''toeppd'',5)');
    fprintf('\nEnter 3 for A = magic(5)');
    fprintf('\nEnter 4 for A = hilb(5)');
    fprintf('\nEnter 5 for A = pascal(5)');
    fprintf('\nEnter 6 for A = [6 16 21 33; 2 20 18 16; 2 18 19 21; 1 2 3 4]');
    fprintf('\nEnter 7 for A = rand(15,15)');
    fprintf('\nEnter 8 for A = toeplitz(1:5)');
    fprintf('\nEnter 9 for another square matrix.');
    fprintf('\nEnter 0 to quit.');
    
    flag = input('\n\nEnter the wanted matrix`s corresponding flag: ');
    
    % If the flag is a number from 1 to 9, we generate the corresponding
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
        A = toeplitz(1:5);
    elseif flag == 9
        fprintf('\nInput a MatLab command that generates a matrix: ');
        A = input('');
    else
        break  
    end
    
    % It can happen that A is not square or that it doesn't admit and LU
    % factorization for another resason (this happens when one of the
    % minors of the leading diagonal of A is zero). We TRY to decompose A,
    % but if we find and error, we CATCH it and display it to the user.
    try
        
        % We compute the factorization with the function defined in part 1.
        [L,U]=doolittle_alg(A);
        
        % We display the obtained factorization of A.
        fprintf('\nMatrix A to be factorized:\n');
        disp(A);
        input('\nPress enter to show the factorization.\n');
        disp('LOWER triangular matrix:');
        disp(L);
        input('\nPress enter to continue.\n');
        disp('UPPER triangular matrix:');
        disp(U);
        input('\nPress enter to continue.\n');
        
        % We also display the error made when computing the factorization.
        fprintf('\nAbsolute error made: %9.8e\n',norm(A-L*U,2));
        input('\nPress enter to solve linear systems with this A.\n');
    
    % The program will execute the following lines only if it finds an
    % error when computing the doolittle factorization.
    catch 
        
        % We make a little noise to notice the user of the error.
        beep;
        
        % We display the error.
        fprintf('\nERROR: There exists no Doolittle factorization for A.\n\n');
        input('Press enter to try again.');
        
        % We jump to the next iteration.
        continue;
    end
    
    % SECOND PART: Solving Ax=b linear systems.
    %
    % (Note that the program won't execute the following lines if it finds
    % an error when computing the LU factorizatin of A).
    %
    % We now create another loop similar to the first one in order to
    % choose a vector b for the system of linear equations Ax=b. Again, we
    % use a flag to determine what the user wants to do an initialize it to
    % -1.
    flag = -1;
    
    % Since the flag = 0 is reserved to quit the program, we use flag = 9
    % to change the matrix A.
    while flag ~= 9

        % We tell the user what linear systems can be solved and ask
        % for the correspondent flag.
        fprintf('\nWhat linear system do you want so solve?\n');
        fprintf('\nEnter 1 for b = [0; 2; 0; 0]');
        fprintf('\nEnter 2 for b = [9; 4; 2; 0]');
        fprintf('\nEnter 3 for b = [10^-3; -0.33; 1; 1]');
        fprintf('\nEnter 4 for b = [0; 2; 0; 0; 1]');
        fprintf('\nEnter 5 for b = [9; 4; 2; 0; -1]');
        fprintf('\nEnter 6 for b = [10^-3; -0.33; 1; 1; 0]');
        fprintf('\nEnter 7 for b = rand(15,1)');
        fprintf('\nEnter 8 for another b.');
        fprintf('\nEnter 9 to change the matrix A.');
        fprintf('\nEnter 0 to quit.');

        flag = input('\n\nb vector: ');

        % If the flag is a number from 1 to 8, we calculate the
        % corresponding solution for x. If it is 0 or any other input,
        % we exit this loop. Note that in the case that it is zero, it will
        % exit both loops, but if it is 9 it will only exit the loop that
        % let us choose the vector b.
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
            fprintf('\nInput a MatLab command that generates a vector b.\n');
            b = input('b vector: ');
        else
            break;
        end
        
        % We can find errors when solving the system Ax=b. Thus we use a
        % similar try and catch structure as before, to catch this errors
        % if they happen.
        try
            
            % We solve the system with the function defined in part 2.
            [x]=linearsystem_alg(L,U,b);
            
            % We display the obtained solution for x. We display the
            % transpose of x because it takes less space in the command
            % window.
            fprintf('\nThe solution of the Ax=b linear system with the selected A and b is:\n');
            disp(transpose(x));
            
            % We display the error made when solving the system.
            fprintf('\nAbsolute error made: %9.8e\n',norm(A*x-b,2));
            input('\nPress enter to solve the same system with a different b.');
        
        % The program will execute the following lines if it finds an error
        % when solving the system of linear equations.
        catch
            
            % We notice the user of the error.
            beep;
            fprintf('\nERROR: The system Ax=b can not be solved.\n\n');
            input('Press enter to try again.');
            
            % We jump to the next iteration.
            continue;
        end
    end
end