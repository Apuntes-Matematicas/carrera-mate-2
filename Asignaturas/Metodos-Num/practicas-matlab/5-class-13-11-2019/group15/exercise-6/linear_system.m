% GROUP 15: Josu Pérez Zarraonandia & Ander Chocarro Salaberria

% Exercise 6: Applications for linear systems: a method used to solve an
% (ODE).

% Part 2: Computing the matrix equation that represents the solution to the
% ODE for a given n.

% Given the linear system A*u = b whose solution u is the function that is
% the solution to the ODE, we define a function "linear_system" that
% outputs A and b of the specified system for a given n.
function [out1,out2]=linear_system(n)

    % We define the step h.
    h = 1/(n+1);
    
    % We create the vector x=(x0,x2,...,xn+1) with n+2 elements such that
    % xi = i*h. First we initialize it to zero and then we introduce the
    % corresponding values. Note that x(1)=x0, meaning x(j)=h*(j-1).
    x=zeros(n+2,1);
    for i=1:1:n+2
        x(i)=(i-1)*h;
    end
    
    % We initialize the matrix and vector b (columnwise).
    b = zeros(n+2,1);
    A = zeros(n+2,n+2);
    
    % We represent the initial conditions, u(0)=1 and u(1)=2+sin(1),
    % as the first and last row of the system of linear equations.
    % Matricially this means that:
    %
    % First equation: u(x0) + 0 + ... + 0 = 1
    % Last equation: 0 + 0 + ... + u(xn+2) = 2+sin(1)
    %
    % First equation:
    A(1,1) = 1;
    b(1)=1;
    % Last equation:
    A(n+2,n+2)= 1;
    b(n+2)=2+sin(1);
    
    % By substituting x=xi in the ODE given by equation 5.1 of the exercise,
    % we obtain equation i of out system of linear equations. From here we
    % will obtain a certain relation depending on x to figure out what each
    % equation looks like, and thus how b and A should be computed.
    %
    % First and last equations are known, (i=1 and i=n+2), so we iterate
    % from i=2 to i=n+1.
    for i=2:1:n+1
        
        % Substituting x=xj=x(i) in the right hand side of the equation
        % 5.1, we obtain the following relation for b.
        b(i)= 2 + 6*x(i)^2 + 2*x(i)*cos(x(i)) - (1+x(i)^2)*sin(x(i));
        
        % In order to compute the i-th row of A, we will focus on the
        % coefficients of u(j) from j=1 to j=n+2. With the relations given
        % for u'' and u' in terms of u(j), we can substitute in equation
        % 5.1 to obtain the following: if j is not i-1, i or i+1, the
        % coefficient of u(j)=0, otherwise it's given by the following
        % equations.
        for j=1:1:n+2
            if j == i-1
                A(i,j)= (1+x(i)^2)/(h^2) - (x(i))/h;
            end
            if j == i
                A(i,j) = -2*(1+x(i)^2)/(h^2);
            end
            if j == i+1
                A(i,j)= (1+x(i)^2)/(h^2) + (x(i))/h;
            end
        end
    end
    
    % Once we have computed the matrix A and the column vector b, we return
    % them to the user.
    out1=A;
    out2=b;
end