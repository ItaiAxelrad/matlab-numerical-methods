function [r] = false_position(f, a, b, N, eps_step, eps_abs)

    if (f(a) == 0)
        r = a; return;
    elseif (f(b) == 0)
        r = b; return; elseif (f(a) * f(b) > 0)
        error('f(a) and f(b) do not have opposite signs');
    end

    c_old = Inf;

    for k = 1:N
        c = (a * f(b) + b * f(a)) / (f(b) - f(a));

        if (f(c) == 0)
            r = c;
            return;
        elseif (f(c) * f(a) < 0)
            b = c;
        else
            a = c;
        end

        if (abs(c - c_old) < eps_step)

            if (abs(f(a)) < abs(f(b))
                abs(f(a)) < eps_abs)
                r = a; return;
            elseif (abs(f(b)) < eps_abs)
                r = b; return;
            end

        end

        c_old = c;
    end error('the method did not converge');

end
