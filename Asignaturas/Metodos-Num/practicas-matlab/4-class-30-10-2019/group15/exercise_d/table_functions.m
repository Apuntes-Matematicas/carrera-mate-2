% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise d): Comparing functions.
% Part 1: Generating the table of values of evaluating f1 and f2 at the
% points x = 1, 10, 10^2 , ..., 10^16.

% Even if the functions 
%
% f1(x) = ?x(?(x + 3) ? ?x) 
% f2(x) = (3?x)/(?(x + 3) + ?x) 
%
% are equal in a mathematical sense, they do have different behaviours from
% a numerical point of view.

% WHY? On each operation (sum, multiplication, power...) that Matlab needs
% to compute in order to calculate the final value, it makes approximations
% and roundings of these results, which can differ depending on how the
% terms of the equation are expressed.
%
%   EXAMPLE: In this exercise's equations there're a couple of square
%   roots. For most of the x values, the result of taking their square root
%   will be an irrational number, which MatLab won't be able to work with.
%   Thus, it will have to approximate the value and it could make a
%   difference because of the decision taken when rounding (up/down), the
%   digits of precission of each operation, the order of computation of the
%   operations, the way operations are computed (for instance,
%   trigonometric operations are calculated using Taylor's expansions),
%   etc.

% We define the values of x where we want to compute the different
% functions.
x=10.^(0:1:16);

% We compute f(x) with 
f1=sqrt(x).*(sqrt(x+3)-sqrt(x));
f2=(3*sqrt(x))./(sqrt(x+3)+sqrt(x));

% Now we will print the table in the command window. We first display two
% lines to indicate what means each column an a bar to distinguish were the
% values of the functions start.
fprintf('%28s\t  %12s\t  %16s\n','x','f1','f2')
fprintf('%70s\n','----------------------------------------------')

% For each element in the domain, we print x, f1(x) and f2(x) with the
% specified format.
for i=1:1:length(x)
    fprintf('%30.e\t  %15f\t  %15f\n',x(i),f1(i),f2(i))
end
