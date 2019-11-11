% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise c): Limit of the Sequence (1).
% Part 1: Defining the function.

% b(n) = 1 + ((-1)^n)/(n^2)    for every positive integer n >= 1    (1).

% We define a function that takes as argument a vector formed of positive
% numbers n >= 1 and outputs the corresponding term of the sequence {b(n)}
% using formula (1). Despite the formula being defined only or positive
% integers, we extend it's defnition to positive numbers in general.
function output=b_sequence(vector)

% We output the corresponding vector using formula (1).
output = 1+((-1).^vector)./(vector.^2);
end