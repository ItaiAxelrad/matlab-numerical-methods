function coscomp(x, n)
    i = 1;
    true = cos(x);
    app = 0;
    f = 1;
    fprintf('\n');
    fprintf('order true value app error\n');

    while (1)
        if i > n, break, end
        app = app + (-1)^(i - 1) * x.^(2 * i - 2) / f;
        er = (true - app) / true * 100;
        fprintf('%3d  %14.10f  %14.10f  %12.8f\n', i, true, app, er);
        i = i + 1;
        f = f * (2 * i - 3) * (2 * i - 2);
    end

    clc
    clear all
    coscomp(1.25, 6)
