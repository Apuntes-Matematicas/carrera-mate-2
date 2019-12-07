% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria
%
% Exercise d): Computing integrals and plotting them when possible.
% Part 3: Third Integral

% The following annonymous functions represent:
% f  --> The function that we want to integrate.
% t1 --> The upper limit of the integral as a function on x.
% t2 --> The upper limit of the integral as a function on y.
% F  --> The integral of f, with limits x=0 and x=t. We want F to be a
%        function of x so that we can later plot it.
%
% Note that for double integrals, we use the integral2 command, that takes
% as input a function of two variables, and two intervals where the double
% integral will be computed, one for the x variable and another one for the
% y variable.
f = @(x,y) x.^3 + y.^2;
t1 = @(x) x;
t2 = @(y) y;
% We make the argument of F a vector, and we will use its coordinates as
% variables: v(1)=x and v(2)=y.
F = @(v) integral2(f,0,t1(v(1)),0,t2(v(2)));

% We define the domain where we want to plot this functions. Since they ask
% us to compute the integral from 0 to 2, we will choose these limits.
x=0:0.1:2;
y=0:0.1:2;
[X,Y]=meshgrid(x,y);

% We now compute the image of our function in the domain.
z = f(X,Y);

% We also compute the integral in the domain. Since the F(x) takes as
% input only integers and not vectors, we will compute it point by point
% with two for loops and then store it in a variable Z.
Z=zeros(length(x),length(y));
for i=1:1:length(x)
    for j=1:1:length(y)
        Z(i,j)=F([x(i) y(j)]);
    end
end

% We finally compute the integral were they asked us. We could do it using
% the command "integral2(f,0,2,0,2)", but since we defined F, we will
% compute F(2,2), which yields to the same result. The following command is
% equivalent to: result = integral2(f,0,2,0,2);
result = F([2 2]);

% We display the result to the user.
fprintf('\nIntegral of f(x,y)=x^3+y^2 from 0 to 2 in both variables:\n')
fprintf('Result: %9.8e\n',result);

% We create a new figure. We will add a plot to this figure.
figure;

% We plot both surfaces, one for the function that is being integrated and
% another one for the function that corresponds with the integral from 0 to
% x and 0 to y. We also add a certain color to each of them so that we can
% easily distinguish them.
h1 = surface(X,Y,z,'FaceColor',[255,100,0]/255);
hold on
h2 = surface(X,Y,Z,'FaceColor',[1,255,200]/255);

% We set the axis tight so the surfaces don't look funny when rotated.
axis tight

% We set an initial view (set by trial and error) so that the surfaces can
% be better appreciated.
view(21,23);

% Scatter is very useful for the following reason: later on we will create
% a legend, and every point created within the same scatter command will be
% agrouped as one in the legend, making it more appealing.
hold on
scatter3(2,2,result,'filled','red');

% We add a title to the plot. We create the title ojbect with a certain
% text and save this object on a variable t so that we can change it's
% properties after its creation.
%
% Initialization.
t = title('Integral $\int^{2}_{0}\int^{2}_{0}(x^3+y^2)dydx$');
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

% In order to create a legend, we first write the text that will go in it.
% Since the legend constructo takes as argument an array of text, we will
% create an array of text, and we will create each element separately.
str1 = '$f(x)=(x^3+y^2)$';
str2 = '$F(r,t)=\int^{r}_{0}\int^{t}_{0}(x^3+y^2)dydx$';
str3 = '$F(2,2)$';
text = {str1, str2, str3};

% We now create the legend object. We will save it in a variable so that we
% can change its properties.
%
% Initialization.
l = legend(text);
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