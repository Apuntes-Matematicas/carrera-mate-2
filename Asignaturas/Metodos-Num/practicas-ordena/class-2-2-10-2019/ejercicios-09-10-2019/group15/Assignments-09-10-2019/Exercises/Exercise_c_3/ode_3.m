% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% ODE exercise 3: Part 1

% x''(t) + 2x'(t) + x(t) = t^2 + 1 - exp(t)
%
% Substituting x'(t) = z(t), the new first order system of ODE is:
% x'(t) = z(t)
% z'(t) = t^2 + 1 - exp(t) - 2z(t) - x(t) 
%
% MATLAB has to read this as:
% x(1)'= x(2)
% x(2)'= t^2 + 1 - exp(t) - 2x(2) - x(1)

function dxdt = ode_3(t,x)
dxdt = [x(2); t^2+1-exp(t)-2*x(2)-x(1)];