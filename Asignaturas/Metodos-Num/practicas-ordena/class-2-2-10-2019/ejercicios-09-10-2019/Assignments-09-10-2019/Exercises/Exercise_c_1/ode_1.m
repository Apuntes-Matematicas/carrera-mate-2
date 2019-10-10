% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% ODE exercise 1: Part 1

% y'(x) + y(x) = 3*cos(x)
%
% y'(x)= 3*cos(x) - y(x) 
%
% MATLAB has to read this as:
% y(1)'= 3*cos(x) - y(1)

function dydx = ode_1(x,y)
dydx = 3*cos(x)-y(1);