% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise f): Build a MATLAB program for each of the two algorithms seen
% in theoretical classes in order to evaluate the function:
%
%       f(x) = (e^x - 1)/x = sum{i=0-->infinity}((x^i)/(i + 1)!)       (1).

% Part 3: Partial Sums

% POWER SERIES AND PARTIAL SUMS:
% f(x)   = 1 + [(1)/(2!)] + ... + [(x^i)/((1+i)!)] + ...      (2).
% S_n(x) = 1 + [(1)/(2!)] + ... + [(x^n)/((1+n)!)]          (3).
% S_n(x) = S_n-1(x) + [(x^n)/((1+n)!)]         (3).

% We define a function that represents f(x) (formula (1)) by computing the
% partial sums (formula (3)) of the power series of f(x) (formula (2)).
% Given a vector, this function returns a vector "output" that fulfills for
% every i in {1,...,n} that output(i)=f(vector(i)).
function output=partial_sum(n,vector)
    
    % We initialize the vector that will store the output.
    output=zeros(1,length(vector));
    
    % We will sum all the terms from i=0 to i=n in order to compute the
    % partial sum S_n(x) (formula (2)). This is why the for loop starts at
    % zero and finishes at n.
    for i=0:1:n
        
        % We now compute the following term in the partial series using
        % formula (3).
        output = output + (vector.^i)./factorial(1+i);
    end
end
        
    
    