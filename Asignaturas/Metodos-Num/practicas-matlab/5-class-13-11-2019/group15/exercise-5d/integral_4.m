% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria
%
% Exercise d): Computing integrals and plotting them when possible.
% Part 4: Fourth Integral

% The following annonymous functions represent:
% f     --> The function that we want to integrate.
% y_max --> The upper limit of the integral as a function on x.
% y_min --> The lower limit of the integral as a function on x.
% 
% Note that for double integrals, we use the integral2 command, that takes
% as input a function of two variables, and two intervals where the double
% integral will be computed, one for the x variable and another one for the
% y variable.
f = @(x,y) x.^2 + y.^2;
y_max = @(x) x.^2;
y_min = @(x) -(x.^2);

% We compute the value of the integral using the integral2 command. This
% command let us integrate functions of two variables, by introducing the
% function, and the intervals on the x-axis and y-axis respectively where
% we want the integral to be computed.
F = integral2(f,-1,1,y_min,y_max);

% We display the result to the user.
fprintf('\nIntegral of f(x,y)=x^2+y^2 from x=-1 to x=1 and y=-x^2 to y=x^2.\n');
fprintf('Result: %9.8e\n',F);

% We define the domain where we want to plot the function that is being
% integrated.
x=-1:0.1:1;
y=-1:0.1:1;
[X,Y]=meshgrid(x,y);

% We now compute the image of our function in the domain.
Z = f(X,Y);

% We create a new figure. We will add a plot to this figure.
figure;

% We plot the surface, the one for the function that is being integrated.
h1 = surface(X,Y,Z);

% We add a colorbar to our plot.
colorbar;

% We set the axis tight so the surfaces don't look funny when rotated.
axis tight

% We set an initial view (set by trial and error) so that the surfaces can
% be better appreciated.
view(21,23);

% We add a title to the plot. We create the title ojbect with a certain
% text and save this object on a variable t so that we can change it's
% properties after its creation.
%
% Initialization.
t = title('Integral $\int^{1}_{-1}\int^{x^2}_{-x^2}(x^2+y^2)dydx$');
% Size of the text.
t.FontSize = 16;
% Text style.
t.FontWeight = 'bold';
% Text interpreter (we want it to read latex code).
t.Interpreter = 'latex';

% We label both axes and change their interpreters so that they read latex
% code.
xlabel('X axis','Interpreter','latex','FontSize',12);
ylabel('Y axis','Interpreter','latex','FontSize',12);
zlabel('Z axis','Interpreter','latex','FontSize',12);

% We now create the legend object. We will save it in a variable so that we
% can change its properties.
%
% Initialization.
l = legend('$f(x,y)=x^2+y^2$');
% Size of the text.
l.FontSize = 12;
% Text Style.
t.FontWeight = 'bold';
% Text Interpreter.
l.Interpreter = 'latex';
% Legend location.
l.Location = 'best';
% Number of columns.
l.NumColumns = 1;