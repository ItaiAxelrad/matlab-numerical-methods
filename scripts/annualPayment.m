function loan(P, i, n)
    x = (1:n);
    A = P * i * (1 + i).^x ./ ((1 + i).^x - 1);
    y = [x; A];
    fprintf('\n year       payment\n');
    fprintf('%5d %14.2f\n', y);

    loan(100000, .033, 5)
