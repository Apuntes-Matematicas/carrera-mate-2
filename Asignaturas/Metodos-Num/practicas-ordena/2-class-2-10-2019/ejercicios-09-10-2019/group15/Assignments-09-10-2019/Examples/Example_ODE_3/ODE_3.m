% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Second part of the Van der Pol equation file.

% We use de ode45 matlab function that takes as input our differential
% equation @vdp1, the interval of integration [0 20] and the initial
% conditions y(0)=2, y'(0)=0.
[t,y] = ode45(@vdp1,[0 20],[2; 0]);

% We plot the functions for the first and the second order derivatives of
% y(t). The '-o' means that we will draw a circle around each point of
% y(:,1) or y(:,2).
plot(t,y(:,1),'-o',t,y(:,2),'-o')

% We add a title to the box.
title('Solution of van der Pol Equation (\mu = 1) with ode45');

% We name both axes: x represents the time and y the solution of the ODE.
xlabel('Time t');
ylabel('Solution y');

% We create a legend to specify which line corresponds to each order of
% derivation of the y(t) function.
legend('y_1','y_2')