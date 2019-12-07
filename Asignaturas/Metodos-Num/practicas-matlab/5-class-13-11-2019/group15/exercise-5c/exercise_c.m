% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria
%
% Exercise c): Maximums and minimums of the function (1).
%
%                   f(x,y) = xy * (1 - x^2 - y^2)           (1).
%
% In the interval D = [-1,1]x[-1,1]

% We first create the meshgrid were we will compute the surface.
x = -1:0.1:1;
y = -1:0.1:1;
[X, Y] = meshgrid(x, y);

% We define an annonymous function f1(x) = f(x) and it's opposite function
% f2(x) = -(f1(x)) = -(f(x)). This functions will be used to compute the
% maximums and minimums of the function (1).
f1=@(v)  ((v(1)*v(2))*(1 - v(1)^2 - v(2)^2));
f2=@(v) -((v(1)*v(2))*(1 - v(1)^2 - v(2)^2));

% We compute the values of the function (1) for every point in the
% meshgrid.
Z = (X.*Y).*(1 - X.^2 - Y.^2);

% From the graphic that we will plot later, we guess the intervals in which
% we will find the maximums and minimums of our function.
%
% Local minimum 1:    [-1 0] x [0 1]
% Local minimum 2:    [0 1]  x [0 -1]
% Local maximum 1:    [-1 0] x [0 -1]
% Local maximum 2:    [0 1]  x [0 1]

% In order to compute the local minimum of f(x) we use the fminsearch
% command. We pass as arguments our function and an initial guess (that we
% have figured out with the plot).
m1 = fminsearch(f1,[-0.5, 0.5]);

% We repeat the process for the second local minimum.
m2 = fminsearch(f1,[0.5, -0.5]);

% In order to compute the local maximum, we use the same strategy as to
% compute the local minimum. However, this time we will compute the minimum
% of f2=-f(x), since the minimums of f2 are the maximums of f1.
M1 = fminsearch(f2,[-0.5, -0.5]);

% We repeat the process for the second local maximum.
M2 = fminsearch(f2,[0.5, 0.5]);

% We display the information to the user with the fprintf command.
fprintf('\nGiven f(x,y)=xy*(1-x^2-y^2).\n\n')

fprintf('The local minimums of f(x) are:\n');
fprintf('Local minimum 1: x = %9.8e, y = %9.8e, z = %9.8e\n',m1,f1(m1));
fprintf('Local minimum 2: x = %9.8e, y = %9.8e, z = %9.8e\n\n',m2,f1(m2));

fprintf('The local maximums of f(x) are:\n');
fprintf('Local maximum 1: x = %9.8e, y = %9.8e, z = %9.8e\n',M1,f1(M1));
fprintf('Local maximum 2: x = %9.8e, y = %9.8e, z = %9.8e\n\n',M2,f1(M2));

% Now we plot the function (1).
h1 = surf(X,Y,Z);

% We also set the axis tight so that the surfaces don't get distorsionated
% when rotated.
axis tight

% We use a certain colormap that MATLAB has predifined for us. In this
% case, summer(5) uses a green spectrum of colors.
colormap(summer(5));

% We add a colorbar to our graph.
colorbar

% We make three variables that will store the x, y and z coordinates of our
% minimums. We will use this variables in order to use the scatter command
% later on.
x_coords=[m1(1),m2(1)];
y_coords=[m1(2),m2(2)];
z_coords=[f1(m1),f1(m2)];

% In order to plot the minimums of the function, we use the following
% commands. With 'hold on' we tell matlab to plot these points in the same
% graph that is being used. With 'scatter', we will plot the points.
% Scatter is a command that takes as argument vectors of points in x, y and
% z respectively and plots every point (x(i),y(i),z(i)) in the graph.
%
% Scatter is very useful for the following reason: later on we will create
% a legend, and every point created within the same scatter command will be
% agrouped as one in the legend, making it more appealing.
hold on
scatter3(x_coords,y_coords,z_coords,'filled','blue');

% We repeat a similar process for the maximums that we have found.
x_coords=[M1(1),M2(1)];
y_coords=[M1(2),M2(2)];
z_coords=[f1(M1),f1(M2)];

hold on
scatter3(x_coords,y_coords,z_coords,'filled','red');

% We add a title to the plot. We create the title ojbect with a certain
% text and save this object on a variable t so that we can change it's
% properties after its creation.
%
% Initialization.
t = title('Maximums and Minimums of $f(x,y)=xy*(1-x^{2}-y^{2})$');
% Size of the text.
t.FontSize = 14;
% Text style.
t.FontWeight = 'bold';
% Text interpreter (we want it to read latex code).
t.Interpreter = 'latex';

% We label the axes and change their interpreters so that they read latex
% code.
xlabel('X axis','Interpreter','latex','FontSize',12);
ylabel('Y axis','Interpreter','latex','FontSize',12);
zlabel('Z axis','Interpreter','latex','FontSize',12);

% In order to create a legend, we first write the text that will go in it.
% Since the legend constructo takes as argument an array of text, we will
% create an array of text, and we will create each element separately.
str1 = '$f(x,y)=xy*(1-x^{2}-y^{2})$';
str2 = '$minimums$';
str3 = '$maximums$';
text = {str1, str2, str3};

% We now create the legend object. We will save it in a variable so that we
% can change its properties.
%
% Initialization.
l = legend(text);
% Size of the text.
l.FontSize = 11;
% Text Style.
t.FontWeight = 'bold';
% Text Interpreter.
l.Interpreter = 'latex';
% Legend location.
l.Location = 'best';
% Number of columns.
l.NumColumns = 1;