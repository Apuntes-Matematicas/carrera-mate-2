% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% ODE exercise 2: Part 1

% 2y''(x) - y'(x) - y(x) = 4*x*exp(x)
%
% Substituting y'(x) = z(x), the new first order system of ODE is:
% y'(x) = z(x)
% z'(x) = (1/2)*z(x) + (1/2)*y(x) + 2*x*exp(x)
%
% MATLAB has to read this as:
% y(1)'= y(2)
% y(2)'= (1/2)*y(2) + (1/2)*y(1) + 2*x*exp(x)

function dydx = ode_2(x,y)
dydx = [y(2); (1/2)*y(2)+(1/2)*y(1)+2*x*exp(x)];