% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise f): Build a MATLAB program for each of the two algorithms seen
% in theoretical classes in order to evaluate the function:
%
%       f(x) = (e^x - 1)/x = sum{i=0-->infinity}((x^i)/(i + 1)!)       (1).

% Part 2: Algorithm 2

% THE ALGORITHM:
% y(x) = e^x                                (2).
% f(x) = 1                 if y = 1         (3).
% f(x) = (y - 1)/log y     if y != 1         (4).

% We define a function that represents f(x) of formula (1) with the
% algorithm 2. Given a vector, this function returns a vector "output" that
% fulfills for every i in {1,...,n} that output(i)=f(vector(i)).
function output=algorithm_2(vector)

    % We initialize the vector that will store the output.
    output=zeros(1,length(vector));
    
    % For every x in the vector input, we will compute f(x) and store it in
    % the output.
    for i=1:1:length(vector)
        
        % First we apply formula (2).
        y = exp(vector(i));
        
        % If y==1 then f(y)=1 (formula (3)).
        if y==1
            output(i)=1;
            
        % Otherwise f(y)=(y-1)/log(y) (formula (3)).
        else
            output(i)=(y-1)/log(y);
        end
    end
end