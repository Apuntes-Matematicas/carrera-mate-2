% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria
%
% Exercise d): Computing integrals and plotting them when possible.
% Part 6: Sixth Integral

% The following annonymous functions represent:
% f     --> The function that we want to integrate.
% y_max --> The upper limit of the integral as a function on x.
%
% Note that for triple integrals, we use the integral3 command, that takes
% as input a function of three variables, and three intervals where the
% triple integral will be computed, one for the x variable, another one for
% the y variable and a last one for the z variable.
f = @(x,y,z) (x.^2).*y;
y_max = @(x) 1-x;

% We compute the value of the integral using the integral3 command. This
% command let us integrate functions of three variables, by introducing the
% function, and the intervals on the x-axis, y-axis and z-axis
% respectively.
F = integral3(f,0,1,0,y_max,0,3);

% We display the result to the user.
fprintf('\nIntegral of f(x,y,z)=(x^2)*y\n');
fprintf('from x=0 to x=1; y=0 to y=1-x and z=0 to z=3.\n');
fprintf('Result: %9.8e\n',F);