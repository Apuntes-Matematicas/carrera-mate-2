% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise c): Limit of the Sequence (1).
% Part 3: Computing the b(n) that make |b(n)-1| < epsilon, for epsilon =
% 0.1, 0.001, and 0.00001.

% b(n) = 1 + ((-1)^n)/(n^2)    for every positive integer n >= 1    (1).
%
% For epsilon = 0.1, 0.001, and 0.00001 use the program to discover from
% which term b(n) of the sequence the condition |b(n)-1| < epsilon is
% satisfied.

% Note that: |bn - 1| = |1 + ((?1)^n)/(n^2) - 1| = |((-1)^n)/(n^2)| =
% = 1/(n^2) = n^(-2)    (2).
% Hence, we need to find the first n such that n^(-2) < epsilon.

% We ask the user to introduce the epsilons for the ones he wants to
% compute the first term of the sequence b(n) that fulfills |b(n)-1| <
% epsilon.
disp('Enter a vector containing the values of epsilon (epsilon > 0).');
disp('Example: [0.1, 0.001, 0.00001]');
epsilons=input('Your input: ');
disp(' ');

% We create a vector with the same length as epsilon. It will store the
% values of n for the ones the condition its fulfilled.
output=zeros(1,length(epsilons));

% We use a for loop to loop through all the introduced epsilons.
for i=1:1:length(epsilons)
    
    % We initialize n to be zero.
    n=0;
    
    % While the condition (2) it's not fulfilled, wee keep searching for
    % one that fulfills it.
    while n^(-2)>=epsilons(i)
        n=n+1;
    end
    
    % Once this n is found, we store it in the corresponding value of
    % output.
    output(i)=n;
end

% For each epsilon, we display the corresponding output with a specific
% format.
for i=1:1:length(output)
    message = 'For epsilon=%8.7f, n=%6d and b(n)=%8.7f';
    fprintf(message, epsilons(i), output(i), b_sequence(output(i)));
    disp(' ');
end