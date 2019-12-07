% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria
%
% Exercise d): Computing integrals and plotting them when possible.
% Part 2: Second Integral

% The following annonymous functions represent:
% f --> The function that we want to integrate.
% t --> The upper limit of the integral as a function on x.
% F --> The integral of f, with limits x=0 and x=t. We want F to be a
%        function of x so that we can later plot it.
%
% Note that for integrals, we use the integral command, that takes as input
% a function of one variable, and an interval for the x variable where the
% integral will be computed.
f = @(x) log(x+1).*sin(x);
t = @(x) x;
F = @(x) integral(f,0,t(x));

% We define the domain where we want to plot this functions. Since they ask
% us to compute the integral from 0 to 20, we will choose these limits.
x=0:0.1:20;

% We now compute the image of our function in the domain.
y = f(x);

% We also compute the integral in the domain. Since the F1(x) takes as
% input only integers and not vectors, we will compute it point by point
% with a for loop and then store it in a variable Y.
Y=zeros(1,length(x));
for i=1:1:length(x)
    Y(i)=F(x(i));
end

% We finally compute the integral were they asked us. We could do it using
% the command "integral(f,0,2)", but since we defined F, we will compute
% F(20), which yields to the same result.
% The following command is equivalent to: result = integral(f,0,20);
result = F(20);

% We display the result to the user.
fprintf('\nIntegral of f(x)=log(x+1)sin(x) from 0 to 20:\n')
fprintf('Result: %9.8e\n',result);

% We add a plot to this figure.
figure;
plot(x,y,x,Y);

% Scatter is very useful for the following reason: later on we will create
% a legend, and every point created within the same scatter command will be
% agrouped as one in the legend, making it more appealing.
hold on
scatter(20,result,'filled');

% We add a title to the plot. We create the title ojbect with a certain
% text and save this object on a variable t so that we can change it's
% properties after its creation.
%
% Initialization.
t = title('Integral $\int^{20}_{0}log(x+1)*sin(x)dx$');
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
str1 = '$f(x)=log(x+1)*sin(x)$';
str2 = '$F(t)=\int^{t}_{0}log(x+1)*sin(x)dx$';
str3 = '$F(20)$';
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
l.NumColumns = 2;