% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise d): Approximating pi.
% Part 3: Defining the function.

% S(n) = 4 * [(1) + (-1/3) + (1/5) + ... + (-1)^(i)/(2i+1) + ...]   (1).
% S(n) = S(n-1) + 4*[(-1)^(n))/(2n+1)]            (2).
% S(n) - S(n-1) = 4*[(-1)^(n))/(2n+1)] = a(n)     (3).

% A number p* is said to approximate p with n significant digits, if n is
% the biggest no negative integer such that:
% |p*-p| / |p| <= 5.0 * 10^(-n)     (4).

% We first ask the user how many significant digits should be computed.
disp(' ');
disp('Enter the number of significant digits that should be computed');
disp('The input should be a positive integer, i.e. 3');
n=input('Input: ');
disp(' ');

% We ask the user the name of the file in which we should store the result.
% The input should be written between quotes and with the .txt. Example:
% "PiApprox.txt".
disp('Enter the name of the file where the result will be stored.');
disp('The input should be written between quotes and with the .txt');
disp('Example of valid input: "PiApprox.txt"');
filename=input('Input: ');
disp(' ');

% We use the function we defined nt to compute how many terms of the series
% (1) are needed to approximate pi to n significant digits (result(1)) and
% to get the corresponding approximation of pi (result(2)).
result=nt(n,filename);

% We display the result.
fprintf('The number of terms needed to approximate pi to n significant');
fprintf(' digits are: %d',result(1));
disp(' ');

% We enter the name of the file that will save a summary of the result.
% This file will contain a summary of all the results computed with this
% file (unless the summary.txt file is deleted).
filename = 'summary.txt';

% We check wether the file has been created or not. If it has been already
% created we just add (operation='a') a new line with the new information.
% Otherwise we would also add an introductory line.
if exist(filename,'file')==2
    fileID=fopen(filename,'a');
    fprintf(fileID,'%20d\t%20d\t%20.18f\n',n,result(1),result(2));
else
    fileID=fopen(filename,'w');
    fprintf(fileID,'This file contains the different approximations of pi that were computed.\n\n\n');
    fprintf(fileID,'%-20s\t%-20s\t%-20s\n','Approximated digits','Terms computed','Approximation of pi');
    fprintf(fileID,'%20d\t%20d\t%20.18f\n',n,result(1),result(2));
end

% We finnally close the file
fclose(fileID);

    