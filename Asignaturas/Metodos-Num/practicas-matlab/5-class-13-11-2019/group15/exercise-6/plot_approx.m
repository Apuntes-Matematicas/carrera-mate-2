% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise 6: Applications for linear systems: a method used to solve an
% (ODE).

% Part 4: Plotting the equation that represents the solution to the ODE for
% a given n.

% The following function plots the approximation to the ODE for a given n
% and returns the error computed when approximating (as the euclidean
% norm).
function error=plot_approx(n)

    % In order to define the system A*u=b, we use the function approx(n) to
    % obtain A and b.
    [A,b] = linear_system(n);

    % The solution to A*u=b is given by MATLAB using the following command.
    u = A\b;

    % In order to plot this function, we define the step h.
    h = 1/(n+1);

    % We create the vector x=(x0,x2,...,xn+1) with n+2 elements such that
    % xi = i*h. First we initialize it to zero and then we introduce the
    % corresponding values. Note that x(1)=x0, meaning x(j)=h*(j-1).
    x=zeros(n+2,1);
    for i=2:1:n+2
        x(i)=(i-1)*h;
    end
    
    % We compute the values for the exact solution to the ODE at the points
    % in x.
    y = x.^2+sin(x)+1;
    
    % We now plot both functions u and y in order to compare them.
    plot(x,u,'-o',x,y,'-');
    
    % Finally we return the error. In this case the error is given by the
    % euclidean norm of the difference between u and y.
    error = norm(u-y);
end