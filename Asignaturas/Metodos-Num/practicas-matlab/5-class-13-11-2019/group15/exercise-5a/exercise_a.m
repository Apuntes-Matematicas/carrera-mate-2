% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria
%
% Exercise a): Roots, maximums and minimums of the function (1).
%
%                   f(x) = x^3 - 6x^2 - 4x + 25             (1).

% We define the domain were we will plot the function.
x = -3:0.1:7;

% We create a vector to plot a straight line at y=0.
z = zeros(1,length(x));

% We define an annonymous function f1(x) = f(x) and it's opposite function
% f2(x) = -(f1(x)) = -(f(x)). This functions will be used to compute the
% zeros, maximums and minimums of the polynomial (1).
f1 = @(x)   x.^3-6*x.^2-4*x+25 ;
f2 = @(x) -(x.^3-6*x.^2-4*x+25);

% We evaluate the y1=f(x) in the domain x.
y = f1(x);

% From the graphic that we will plot later, we guess the intervals in which
% we will find the roots, maximums and minimums of our function.
%
% Zero 1:           [-2.5 1.5]
% Zero 2:           [1.5 2.5]
% Zero 3:           [5 7]
% Local maximum:    [-1 1]
% Local minimum:    [3 6]

% We compute the roots of f(x) using the fzero command. This command takes
% as input the function whose zeros we want to compute and the interval
% where we want to compute them.
r1 = fzero(f1,[-2.5 1.5]);
r2 = fzero(f1,[1.5, 2.5]);
r3 = fzero(f1,[5 7]);

% In order to compute the local minimum of f(x) we use the fminbnd
% function. We pass as arguments our function and the interval where we
% want the minimum to be computed.
m1 = fminbnd(f1,3,6);

% In order to compute the local maximum, we use the same strategy as to
% compute the local minimum. However, this time we will compute the minimum
% of y2=-f(x), since the minimums of y2 are the maximums of y1.
m2 = fminbnd(f2,-1,1);

% We display all the computed information to the user, using the already
% known commands disp and fprintf.
fprintf('\nGiven f(x)=x^3-6x^2-4x+25.\n\n')
fprintf('The roots of f(x) are:\n');
fprintf('Root 1: x = %9.8e, y = %9.8e\n',r1,f1(r1));
fprintf('Root 2: x = %9.8e, y = %9.8e\n',r2,f1(r2));
fprintf('Root 3: x = %9.8e, y = %9.8e\n\n',r3,f1(r3));

fprintf('The local minimum of f(x) is:\n');
fprintf('Local minimum: x = %9.8e, y = %9.8e\n\n',m1,f1(m1));

fprintf('The local maximum of f(x) is:\n');
fprintf('Local maximum: x = %9.8e, y = %9.8e\n\n',m2,f1(m2));

% We plot the function, with the already known command plot.
plot(x,y,x,z,'--');

% In order to plot the zeros of the function, we use the following
% commands. With 'hold on' we tell matlab to plot these points in the same
% graph that is being used. With 'scatter', we will plot the points.
% Scatter is a command that takes as argument a vector of points in x, and
% a vector of points in y, and plots every point (x(i),y(i)) in the graph.
%
% Scatter is very useful for the following reason: later on we will create
% a legend, and every point created within the same scatter command will be
% agrouped as one in the legend, making it more appealing.
hold on
scatter([r1,r2,r3],[f1(r1),f1(r2),f1(r3)],'filled','red');

hold on
scatter(m1,f1(m1),'filled');

hold on
scatter(m2,f1(m2),'filled');

% We add a title to the plot. We create the title ojbect with a certain
% text and save this object on a variable t so that we can change it's
% properties after its creation.
%
% Initialization.
t = title('Polynomial $x^3-6\,x^2-4\,x+25$');
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

% In order to create a legend, we first write the text that will go in it.
% Since the legend constructo takes as argument an array of text, we will
% create an array of text, and we will create each element separately.
str1 = '$f(x)=x^3-6x^2-4x+25$';
str2 = '$f(x)=0$';
str3 = '$roots$';
str4 = '$minimum$';
str5 = '$maximum$'; 
text = {str1, str2, str3, str4, str5};

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