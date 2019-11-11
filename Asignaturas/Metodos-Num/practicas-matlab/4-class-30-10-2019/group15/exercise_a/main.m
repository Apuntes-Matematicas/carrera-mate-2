% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise a): Partial Sum of the series (1).
% Part 2: Computing S(n) for N=10,20,30 and answering the question.
%
%   S  = 1 + 2/(1!) + (2^2)/(2!) + ... + (2^n)/(n!) + ...   (1)
% S(n) = 1 + 2/(1!) + (2^2)/(2!) + ... + (2^n)/(n!)         (2)

% We ask the user to input a set of integers "values" for the ones he wants
% to compute the partial sum (2).
disp('Introduce an ordered vector formed by distinct positive integers');
disp('Examples of input: [10 20 30] or [1,4,10,50]');
values=input('INPUT: \n');

% We use the defined function partial_sum, that takes as input an ordered
% list of positive integers and outputs a vector "result" that fufills that
% result(i) = S(values(i))  (applying formula 2).
result=partial_sum(values);

% Finally, we use a for to display each element of the result with a
% specific format.
disp('Partial Sums of the introduced integers.')
for i=1:1:length(result)
    fprintf('Partial Sum of %5d is: %10.8f \n', values(i), result(i));
end

% Do you identify the obtained value?
% We observe that the series converges to e^2. Indeed, it is the series of
% e^x evaluated at x=2.