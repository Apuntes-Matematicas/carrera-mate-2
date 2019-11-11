% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise c): Limit of the Sequence (1).
% Part 2: Plotting the function.

% Write a MATLAB program/script that generates a graphic showing the
% definition of limit of the sequence:
%
% b(n) = 1 + ((-1)^n)/(n^2)    for every positive integer n >= 1    (1).

% We use the linspace function to gnerate the domain in which we will plot
% the values of the sequence.
x=linspace(1,20,1000);

% We create a vector "y" that stores for each value in the domain b(x).
% Despite the sequence being defined only for positive integer values, we
% use rational values in order to obtain a smooth plot. We use the
% previously defined function b_sequence.
y=b_sequence(x);
disp(y);

% The limit of this sequence is 1. We want to compare the values of b(n)
% with 1, so we create a vector "z" that represents an horizontal line at
% y=1.
z=ones(1,1000);

% We plot the corresponding functions against the domain.
plot(x,y,x,z);

% We limit the y-axis so we can better appreciate the limit of the
% sequence.
ylim([0.6 1.4]);

% We add a title to the plot.
title('Definition of limit of b(n)');

% We label the axes.
xlabel('\it x-axis');
ylabel('\it y-axis');

% We add a legend.
legend('Sequence {b(n)}','y=1');