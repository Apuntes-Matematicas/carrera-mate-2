% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% ODE exercise 3: Part 2

[t, x]=ode45(@ode_3,[0,3],[0;2]);
plot(t,x(:,1),'-o',t,x(:,2),'-o')
xlabel('\it t axis')
ylabel('\it x axis')
legend('y_1','y_2')
title('Solution of the ODE: 2x''''(t) -x'' (t) -x(t) = 4*t*exp(t)')