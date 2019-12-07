% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria
%
% Exercise b): Surface and tangent plane at x=1, y=0 of (1).
%
%                   z = x^3 + y^3 + 3*exp(x*y)             (1).
%
%
% All the calculations we made are in the proof.pdf file within the
% exercise-b folder.
% Point where we will compute the tangent plane:
% z(1,0) = 2    --> (1,0,2)
%
% Tangent plane equation:
% f(x,y) = 3x + y - 1                                       (2).

% We first create the meshgrid were we will compute the surface.
x = -1:0.1:1;
y = -1:0.1:1;
[X, Y] = meshgrid(x, y);

% We compute the values of the function (1) for every point in the
% meshgrid.
Z1 = X.^3 + Y.^3 + exp(X.*Y);

% Using equation (2), we will now compute the values of the tangent plane.
Z2 = 3*X + Y - 1 ;

% Now we plot the function (1). We set a specific color to this surface
% with the FaceColor property of this command, and we specify a certain RGB
% color.
h1 = surf(X,Y,Z1,'FaceColor',[255,100,0]/255);

% We also plot the tangent plane. We use the hold on command in order to
% plot them in the same graph.
hold on
h2 = surf(X,Y,Z2,'FaceColor',[1,255,200]/255);

% We use the scatter3 command to plot the point at which we want to compute
% the tangent plane. The command scatter3 which works well to plot single
% points in the plot and group them in the legend. As usual, we use the
% hold on command to plot everything in the same plot.
hold on
scatter3(1,0,2,'filled','blue');

% We also set the axis tight so that the surfaces don't get distorsionated
% when rotated.
axis tight

% We change the camera view with the view command. We have chosen some
% coordinates such that the view shows both surfaces and the intersection
% point in a smooth way.
view(-20, 0);

% We add a title to the plot. We create the title ojbect with a certain
% text and save this object on a variable t so that we can change it's
% properties after its creation.
%
% Initialization.
t = title('Tangent Plane of $z=x^3+y^3+e^{xy}$ at (1,0)');
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
str1 = '$z(x,y)=x^3+y^3+e^{xy}$';
str2 = '$f(x,y)=3x+y-1$';
str3 = '$(1,0,2)$';
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
l.NumColumns = 2;