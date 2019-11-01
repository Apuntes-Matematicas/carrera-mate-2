function [L, U] = Crout(A)
    [n, m] = size(A);
    for i = 1:n
        L(i, 1) = A(i, 1);
        U(i, i) = 1;
    end
    for j = 2:n
        U(1, j) = A(1, j) / L(1, 1);
    end
    for i = 2:n
        for j = 2:i
            L(i, j) = A(i, j) - L(i, 1:j - 1) * U(1:j - 1, j);
        end
        for j = i + 1:n
            U(i, j) = (A(i, j) - L(i, 1:i - 1) * U(1:i - 1, j)) / L(i, i);
        end
    end
end