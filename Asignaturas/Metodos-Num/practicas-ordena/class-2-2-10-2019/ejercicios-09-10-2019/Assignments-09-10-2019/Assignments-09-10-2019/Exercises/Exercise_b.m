% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise b

[X,Y]=meshgrid(-3:0.05:3,-3:0.05:3);
Z=sin(X.^2+Y.^2)./(X.^2+Y.^2+10);
surf(Z)
shading interp
colorbar
view(3)
xlabel('\it x axis')
ylabel('\it y axis')
zlabel('\it z axis')
title('Plot of g(x,y) = sin(x^2+y^2) / (x^2+y^2+10)')