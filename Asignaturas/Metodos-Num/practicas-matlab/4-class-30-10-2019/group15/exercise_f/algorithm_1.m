% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise f): Build a MATLAB program for each of the two algorithms seen
% in theoretical classes in order to evaluate the function:
%
%       f(x) = (e^x - 1)/x = sum{i=0-->infinity}((x^i)/(i + 1)!)       (1).

% Part 1: Algorithm 1

% THE ALGORITHM 1:
% f(x) = 1                 if x = 0     (2).
% f(x) = (e^x - 1)/x       if x != 0     (3).

% We define a function that represents f(x) of formula (1) with the
% algorithm 1. Given a vector, this function returns a vector "output" that
% fulfills for every i in {1,...,n} that output(i)=f(vector(i)).
function output=algorithm_1(vector)

    % We initialize the vector that will store the output.
    output=zeros(1,length(vector));
    
    % For every x in the vector input, we will compute f(x) and store it in
    % the output.
    for i=1:1:length(vector)
        
        % If x==0 then f(x)=1 (formula (2)).
        if vector(i)==0
            output(i)=1;
            
        % Otherwise f(x)=(e^x-1)/x (formula (3)).
        else
            output(i)=(exp(vector(i))-1)/vector(i);
        end
    end
end
    
