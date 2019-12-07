% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria
%
% Exercise d): Computing integrals and plotting them when possible.
% Part 5: Fifth Integral

% The following annonymous functions represent:
% f     --> The function that we want to integrate.
%
% Note that for triple integrals, we use the integral3 command, that takes
% as input a function of three variables, and three intervals where the
% triple integral will be computed, one for the x variable, another one for
% the y variable and a last one for the z variable.
f = @(x,y,z) 2*x+3*y+z;

% We compute the value of the integral using the integral3 command. This
% command let us integrate functions of three variables, by introducing the
% function, and the intervals on the x-axis, y-axis and z-axis
% respectively.
F = integral3(f,1,2,-1,1,0,1);

% We display the result to the user.
fprintf('\nIntegral of f(x,y,z)=2x+3y+z\n');
fprintf('from x=1 to x=2; y=-1 to y=1 and z=0 to z=1.\n');
fprintf('Result: %9.8e\n',F);