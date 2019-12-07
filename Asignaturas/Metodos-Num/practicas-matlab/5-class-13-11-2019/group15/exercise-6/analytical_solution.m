% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise 6: Applications for linear systems: a method used to solve an
% (ODE).

% Part 1: Analytical calculation of the Baundary Value Problem of the ODE
% in [0,1].

% Command for the Symbolic Math Toolb: we will use this command in order to
% have a symbolic function with which we will later solve the ODE.
syms u(x)

% The diff function differenciates the function between brackets with
% respect to the variable determined by an argument on his right. In our
% case, we just have the x variable so diff takes u's derivative with
% respect to it.
eqn = diff(diff(u)) == (2+6*x.^2+2*x*cos(x)-(1+x.^2)*sin(x)-2*x*diff(u))/(1+x.^2);

% We state the initial conditions u(0) and u(1):
cond = [u(0),u(1)] == [1,2+sin(1)];

% With the dsolve function, we solve the ODE.
u(x) = dsolve(eqn,cond);

% The domain where we will plot the function.
x = 0:0.05:1;

% Since the difference between the computed approximation and the original
% value of the function is very slight, we plot the two functions in
% separated graphics by using subplots, instead of using the hold on
% command, which makes the functions overlap each other making it harder
% to visualize.
subplot(2,1,1);
plot(x,u(x),'-og')
title('Approximation');

% Finally we plot the analytical solution to the ODE to compare it with the
% one MATLAB has computed.
subplot(2,1,2);
y = x.^2+sin(x)+1;
plot(x,y)
title('Analytical solution');