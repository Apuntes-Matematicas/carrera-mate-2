% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise b): Cubic Values.
% Part 1: Defining the function.

% Program to find all integers numbers between 0 and 9999 such that the sum
% of the cube of its digits is equal to the number itself. Example, 153 is
% a cubic number because:
% 1^3 + 5^3 + 3^3 = 153.

% We define a function that takes as arguments a positive integer "n" and
% the name of a file, "filename". This function will find all the integers
% between 0 and n such that the sum of the cubes of its digits is equal to
% the number itself, and then it will store them in the file.
function cubic_values(n, filename)

% We create the file that will store the result. We also store a default
% message in the file with the fprintf command. This sprintf command is
% used to format this string.
cubic_values = fopen(filename,'w');
default_string = sprintf('The integers between 0 and %d verifying the condition are:\n',n);
fprintf(cubic_values, default_string);

% We will now find what numbers i from 0 to n fulfill our conditions.
for i=0:1:n
    
    % The following command creates a vector whose entries are the digits
    % of the number i. Example: i=1234 --> digits=[1 2 3 4].
    digits=num2str(i)-'0';
    
    % In order to sum the cubes of the digits of the number i, we take the
    % vector digits, take the cube of each of its elements with digits.^3,
    % and then sum them all with the function sum(). Afterwards we compare
    % this number to i.
    if sum(digits.^3)==i
        
        % If the values are equal, then i is a cubic number and we store it
        % in the file. Otherwise we do nothing.
        fprintf(cubic_values,[' ' newline '%10d'],i);
    end
end

% We close the file once our job is over.
fclose(cubic_values);
end
