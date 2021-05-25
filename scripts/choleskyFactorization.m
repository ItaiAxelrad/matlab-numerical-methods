A = [8 20 16; 20 80 50; 16 50 60];
U = chol(A)
U' * U
% Cholesky function symmetric matrix without pivoting
function U = cholesky(A)
    [m, n] = size(A);
    if m ~= n, error('Must Be Square Matrix'); end

    for i = 1:n
        s = 0;

        for k = 1:i - 1
            s = s + U(k, i).^2;
        end

        U(i, i) = sqrt(A(i, i) - s);

        for j = i + 1:n
            s = 0;

            for k = 1:i - 1
                s = s + U(k, i) * U(k, j);
            end

            U(i, j) = (A(i, j) - s) / U(i, j);
        end

    end
