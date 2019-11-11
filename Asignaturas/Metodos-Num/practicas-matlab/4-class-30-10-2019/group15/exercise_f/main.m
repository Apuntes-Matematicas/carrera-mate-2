% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise f): Build a MATLAB program for each of the two algorithms seen
% in theoretical classes in order to evaluate the function:
%
%       f(x) = (e^x - 1)/x = sum{i=0-->infinity}((x^i)/(i + 1)!)       (1).

% Part 4: Comparing the three methods

% In order to compare the three methods, we will ask the user to introduce
% a series of parameters, and then we will output a file that will contain
% a file with the results ready to be compared.

% First we ask the user to introduce the name of the file.
disp('Enter the name of the file where the result will be stored.');
disp('The input should be written between quotes and with the .txt.');
disp('Example of valid input: "methods_comparision.txt".');
filename=input('Input: ');
disp(' ');

% We open the file and set it ready for later.
fileID=fopen(filename,'w');
fprintf(fileID,'This file contains a comparision between the three methods.\n\n');

% We ask the user how many terms should be computed for the partial sum
% method.
disp('Enter the number of terms that should be computed for the partial sum method.');
disp('Example: 30');
n=input('Input: ');
disp(' ');

% Now we ask the user the vector that contains the values of x over which
% we will compare the different methods.
disp('Enter the vector over which the different methods should be compared.');
disp('Example: 10.^(-5:-1:-16) = [10^-5, ..., 10^-16]');
x=input('Input: ');
disp(' ');

% % Before computing anything we tell Matlab that the format we want to use
% % is the following one:
% format longE;
% format style longE;

% We compute f(x) with the three different methods and save the result in
% three different variables.
y1=algorithm_1(x);
y2=algorithm_2(x);
y3=partial_sum(n,x);

% We add a line to explain the format that we will use in the file.
fprintf(fileID,'%18s \t %18s \t %18s \t %18s n=%d\n\n',...
    'x','Algorithm 1','Algorithm 2', 'Partial Sum',n);

% Now we have the results, we add this information into the file. In order
% for the program to be more readable, we specify below the fprintf format
% string.
for i=1:1:length(x)
    string='%15.14e \t %15.14e \t %15.14e \t %15.14e\n';
    fprintf(fileID,string,x(i),y1(i),y2(i),y3(i));
end

% We close the file.
fclose(fileID);

% We print a message to notify the user the program has finished computing.
disp('Your file has been created');