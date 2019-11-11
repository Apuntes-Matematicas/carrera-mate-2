% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise d): Comparing functions.
% Part 2: Plotting the functions.

% Even if the functions 
%
% f1(x) = ?x(?(x + 3) ? ?x) 
% f2(x) = (3?x)/(?(x + 3) + ?x) 
%
% are equal in a mathematical sense, they do have different behaviours from
% a numerical point of view.

% Generate a plot in logarithmic scale (to the base 10) for the x
% axis and lineal scale for the y axis by using the semilogx command.
% Comparing the results, which one looks better? Which is the reason?

% We define the values of x where we want to compute the different
% functions.
x=10.^(0:1:16);

% We compute f(x) with 
f1=sqrt(x).*(sqrt(x+3)-sqrt(x));
f2=(3*sqrt(x))./(sqrt(x+3)+sqrt(x));

% We create two separate windows to compare the functions, because they are
% very similar and almost overlap each other in one window.
% This is the first window.
figure

% We use the semilogx function to create a plot that uses a linear scale
% for the y axis and a logarithmic scale for the x axis. We specify
% continuous line and blue hexagons for the plot.
semilogx(x,f1,'-hb')

% We limit the x and y axes so that the plot fits correctly inside the box.
xlim([0,10^16]);
ylim([0,2]);

% We add a title.
title('Plot of f1 with x in the logarithmic scale')

% This is the second window.
figure

% We use the same arguments as before, but this time we will use the red
% color.
semilogx(x,f2,'-hr')

% We limit the axes again.
xlim([0,10^16]);
ylim([0,2]);

% We add a title.
title('Plot of f2 with x in the logarithmic scale')