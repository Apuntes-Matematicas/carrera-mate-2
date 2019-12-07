% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise 6: Applications for linear systems: a method used to solve an
% (ODE).

% Part 5: Computing and plotting the approximations for n=10,20,40,80,160,
% as well as their associated errors.

% We ask the user if he / she wants to compute a specific approximation or
% the approximations for the given values.
disp('In order to plot the approximation for a particular n introduce: 1');
disp('To compute the approximations for n=10,20,40,80,160, introduce: 2');
flag = input('Input must be 1 or 2: ');

% If they ask us to compute a specific approximation we do the following.
if flag == 1
    
    % We ask the user the n for which they want to approximate the
    % solution.
    n = input('\nInput a positive integer: ');
    
    % We use the plot_approx function to plot the graph and compute the
    % error.
    error = plot_approx(n);
    
    % We display the error to the user.
    fprintf('\nThe error when approximating the solution for n=%d is:\n',n);
    fprintf('Error = %9.8e\n',error);
end

% If they ask to compute the approximations for n=10,20,40,80,160 we do as
% follows.
if flag == 2
    % We define a vector that contains the values of n that we want to
    % approximate for.
    values = [10 20 40 80 160];
    
    % Later on we will use the subplot command. Thus we associate to each
    % approximation a coordinate in the figure in order to display the
    % graphs in order.
    coordinates = [1,3,5,7,9];
    
    % We initialize the vector that contains the errors to zero.
    error = zeros(1,5);
    
    % We use a for loop to go through every value of n.
    for i=1:1:5
        
        % We create a subplote in our figure.
        subplot(3,3,coordinates(i));
        
        % We use the plot_approx function to plot the graph and compute the
        % error of the approximation.
        error(i) = plot_approx(values(i));
    end
    
    % We now display the different errors to the user.
    fprintf('\nThe errors when approximating the solution are:\n\n');
    
    % We use a for to print each of the errors.
    for i=1:1:5
       fprintf('N=%4d; Error = %9.8e\n',values(i),error(i));
    end
end