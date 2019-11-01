function [L, U] = Doolittle(A)
    [n, m] = size(A);
    for j= 1:n
        U(1, j) = A(1, j);
        L(j, j) = 1;
    end
    for i = 2:n
        L(i, 1) = A(i, 1) / U(1, 1);
    end
    for j = 2:n
        for i = 2:j
            U(i, j) = A(i, j) - L(i, 1:i - 1) * U(1:i - 1, j);
        end
        for i = j + 1:n
            L(i, j) = (A(i, j) - L(i, 1:j - 1) * U(1:j - 1, j)) / U(j, j);
        end
    end
end