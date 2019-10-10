% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% ODE exercise 1: Part 2

[x, y]=ode45(@ode_1,[0,10],5);
plot(x,y(:,1),'-o')
xlabel('\it x axis')
ylabel('\it y axis')
title('Solution of the ODE: y''(x) + y(x) = 3cos(x)')
