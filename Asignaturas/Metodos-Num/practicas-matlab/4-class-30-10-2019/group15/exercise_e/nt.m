% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise d): Approximating pi.
% Part 3: Defining the function.

% S(n) = 4 * [(1) + (-1/3) + (1/5) + ... + (-1)^(i)/(2i+1) + ...]   (1).
% S(n) = S(n-1) + 4*[(-1)^(n))/(2n+1)]            (2).
% S(n) - S(n-1) = 4*[(-1)^(n))/(2n+1)] = a(n)     (3).

% A number p* is said to approximate p with n significant digits, if n is
% the biggest no negative integer such that:
% |p*-p| / |p| <= 5.0 * 10^(-n)     (4).

% We define a funciton that given a positive integer n, outputs how many
% terms of the series (1) are needed to approximate pi to n significant
% digits (formula (4)). This function will aslo create the file where we
% will store the different approximations of pi.
function output=nt(n,filename)

% We open the file. And add an introductory line to it.
fileID=fopen(filename,'w');
fprintf(fileID,'This file contains all the iterations needed to');
fprintf(fileID,' approximtate pi to n significant digits.\n\n');

% We also add a line that explains the format we will use in this file.
fprintf(fileID,'Number of terms \t Approximation of PI\n');

% We define the variable n_significant_digits as true if our approximation
% of pi fulfills formula (4) for the given n and false otherwise.
n_significant_digits=false;

% We initialize pi_approx to zero. This variable will be our approximation
% of pi.
pi_approx=0;

% We initialize the counter to -1. This is because every time we enter the
% loop we will add 1 to it and we want it to be zero the first time it
% enters the loop. This variable will be the number of terms needed to
% approximate pi to n significant digits.
i=-1;

% We use a for loop to compute more and more digits of pi until we achieve
% our result.
while n_significant_digits == false
    
    % We update the counter.
    i = i + 1;
    
    % We update the the approximation of pi using formula (2) and the
    % previously defined function sequence.
    pi_approx = pi_approx + sequence(i);
    
    % We add this approximation of pi to the file, specifying the number of
    % the iteration we are in.
    fprintf(fileID,'%15d \t %19.17f\n',i,pi_approx);
    
    % We use the previously defined function significant_digits to check if
    % we fulfill formula (4) (to check if we approximate pi with n
    % significant digits).
    n_significant_digits = significant_digits(pi_approx,pi,n);
end

% We close the file.
fclose(fileID);

% We enter the result in the variable output.
output=[i,pi_approx];
end