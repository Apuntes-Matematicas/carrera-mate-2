% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise a

t=-2:0.005:2;
z=log(t.^4+1)./(t.*cos(t.^6+6));
plot(t,z)
ylim([-2,2])
xlabel('\it x axis')
ylabel('\it y axis')
title('Plot of f(x) = ln(x^4+1) / (x*cos(x^6+6))')

