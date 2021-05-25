function C = mult(A, B)
    A = [4 0; 1 8];
    B = [1 2; 6 1];
    [m, n1] = size(A);
    [n2, p] = size(B);

    if n1 ~= n2, error('inner dimensions not matching')
    end

    for x = 1:m

        for y = 1:p
            S = 0.;

            for k = 1:n1
                S = S + A(x, k) * B(k, y);
            end

            C(x, y) = S;
        end

    end
