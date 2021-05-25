function V = v(t)

    if t < 0
        V = 0;
    elseif t >= 0
        V = 10 * t.^2 - 5 * t;
    elseif t >= 8
        V = 624 - 5 * t;
    elseif t >= 16
        V = 36 * t + 12 * (t - 16).^2;
    elseif t > 26
        V = 2136 * exp - .1 * (t - 26);
    end
