% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% ODE exercise 2: Part 2

[x, y]=ode45(@ode_2,[0,1],[0,0]);
plot(x,y(:,1),'-o',x,y(:,2),'-o')
xlabel('\it x axis')
ylabel('\it y axis')
legend('y_1','y_2')
title('Solution of the ODE: 2y''''(x) - y''(x) - y(x) = 4*x*exp(x)')