% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% First part of the Van der Pol equation file.

% The van der Pol equation is a second order ODE.
%
% y'' - mu(1-y^2) y' + y = 0   (where mu is a scalar parameter).
%
% We have to rewrite this equation as a first order system of ODE
% substituting y'= z.
% The new first order system of ODE is
% y'= z
% z'= mu(1-y^2) z - y
%
% MATLAB has to read this as
% y(1)'= y(2)
% y(2)'= mu(1-y(1)^2) y(2) - y(1)
%
% We have to define a function with the two equations
% with a fixed value of mu, for instance mu = 1:

% We create a function object so that Matlab can operate with it and solve
% the differential equation. We will have y as a function of t. I.E.: y(t).
function dydt = vdp1(t,y)

% We create a vector that holds the system of ODE. We store each equation
% in a distinct component of the vector.
dydt = [y(2); (1-y(1)^2)*y(2)-y(1)];