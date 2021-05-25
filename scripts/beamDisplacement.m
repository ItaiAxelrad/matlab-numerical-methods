function u = disp(L)
    n = length(L);

    for i = 1:n
        u(i) = -5/6 * (s(L(i), 0, 4)) - (s(L(i), 5, 4));
        u(i) = u(i) + 15/6 .* s(L(i), 8, 3) + 75 .* s(L(i), 7, 2);
        u(i) = u(i) + 57/6 .* L(i).^3 - 238.25 * L(i);
    end

    function S = s(y, a, n);

        if y > a
            S = (y - a).^n
        else S = 0
        end
