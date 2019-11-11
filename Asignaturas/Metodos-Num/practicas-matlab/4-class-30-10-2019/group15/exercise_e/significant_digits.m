% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise d): Approximating pi.
% Part 2: Defining the auxiliar function significant_digits.

% A number p* is said to approximate p with n significant digits, if n is
% the biggest no negative integer such that:
% |p*-p| / |p| <= 5.0 * 10^(-n)     (1).

% We define a function that takes as argument two numbers that should be
% compared, p the real value and p* the approximated value, and a positiv
% integer n that represents the number of significant digits of formula
% (1). The function returns True if p* approximates p with n significant
% digits and false otherwise.
function output=significant_digits(approximated,real,n)

% If formula (1) is fulfilled, we output true, false otherwise.
if abs(real-approximated)/real <= 5*10^(-n)
    output = true;
else
    output = false;
end