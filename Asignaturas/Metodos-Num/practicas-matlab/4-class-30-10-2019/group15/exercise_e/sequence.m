% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise d): Approximating pi.
% Part 1: Defining the auxiliar function sequence.

% S(n) = 4 * [(1) + (-1/3) + (1/5) + ... + (-1)^(i)/(2i+1) + ...]   (1).
% S(n) = S(n-1) + 4*[(-1)^(n))/(2n+1)]            (2).
% S(n) - S(n-1) = 4*[(-1)^(n))/(2n+1)] = a(n)     (3).

% We define a function that takes as argument a positive integer n and
% outputs the diference between S(n) and S(n-1) (formula (3)), which
% corresponds with the sequence a(n). This will be used in another program
% to compute S(n) with formula (2).
function output=sequence(n)

% We output the corresponding value using formula (3).
output = 4*(((-1)^(n))/(2*n+1));
end