% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise a): Partial Sum of the series (1).
% Part 1: Defining the function.
%
%   S  = 1 + 2/(1!) + (2^2)/(2!) + ... + (2^n)/(n!) + ...   (1)
% S(n) = 1 + 2/(1!) + (2^2)/(2!) + ... + (2^n)/(n!)         (2)
%
% We observe the following relationship:
% S(n) = S(n-1) + (2^n)/(n!)    with S(0)=(2^0)/(0!)=1      (3)
%
% We define a function that takes as argument an ordered vector (from lower
% to higher values) of natural numbers named "values", and returns a vector
% named "output" that for every i in the set {0,1,...,length(values)}:
% output(i) = S(values(i))  (formula (2) of S(n)).
function output=partial_sum(values)

    % We initialize the output to be a vector with the same length as
    % values, formed by zeros.
    output=zeros(1,length(values));
    
    % We create a waitbar, because if the numbers are too high, the script
    % would take a long time to run.
    h = waitbar(0,'Computing...');
    
    % We initialize the sum.
    sum=0;
    
    % We will compute S(n) for every n in values using formula (3). In
    % order to do this, we create a for loop to go through every n in
    % values.
    for j=1:1:length(values)
        
        % We compute S(values(1)) using formula (3), and save the result
        % accordingly in output(1). In order to do this, we use a for loop
        % to go from i=0 to i=values(1).
        if j==1
            for i=0:1:values(1)
                sum = sum + 2^(i)/(factorial(i));
            end
            output(1)=sum;
            
        % When the program reaches this instruction, j>=2 and sum=S(j-1).
        % With this in mind, since values is an ordered vector:
        % values(j)>=values(j-1); to compute S(values(j)), instead of
        % starting at i=0 we can start at i=values(j-1)+1, saving a lot of
        % time. Again, we use formula (3) to compute S(values(j)) and we
        % save the result accordingly in output(j).
        else
            for i=values(j-1)+1:1:values(j)
                sum = sum + 2^(i)/(factorial(i));
            end
            output(j)=sum;
        end
        
        % We update the waitbar according to how many elemnts are left to
        % iterate in the values variable.
        waitbar(j/length(values));
    end
    
    % We close the waitbar.
    close(h);
end