% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise b): Cubic Values.
% Part 2: Main program.

% Program to find all integers numbers between 0 and 9999 such that the sum
% of the cube of its digits is equal to the number itself. Example, 153 is
% a cubic number because:
% 1^3 + 5^3 + 3^3 = 153.

% We ask the user to give us a positive integer n. Later on, we will
% compute the cubic values from 0 (included) to n.
disp('Input a positive integer. Example: 9999');
n=input('Enter your input: ');
disp(' ');

% We now ask for the name of the file. It is important that the user adds
% ".txt" at the end of the string.
disp('Warning: the introduced txt file will be overwritten.');
disp('Enter the name of the file between quotes ("filename.txt").')
disp('Don''t forget to add the .txt extension.');
disp('Example: "CubicValues.txt"');
filename=input('Enter your input: ');
disp(' ');

% We now use the defined function to find all the cubic values between 0
% and n and to store them in the file.
cubic_values(n, filename);

% We display a message to notice the user the program finished operating.
disp('Your file has been created.');