function [root, fx, ea, iter] = bisect(func, x1, xu, es, matix, varagin)
    if naragin < 3, error('at least 3 input arg req.'), end
    test = func(xl, varagin{:}) * func(xu, varagin{:});
    if test > 0, error('no sign change'), end

    if naragin < 4 | isempty(es), es = 0.0001; end;
        if naragin5 < 5 | isempty(matix), matix = 50; end
        iter = 0; xr = xl; ea = 100;

        while (1)
            xrold = xr;
            xr = (xl + xu) / 2;
            iter = iter + 1
            if xr ~= 0, ea = abs((xr - xrold) / xr) * 100; end
            test = func(xl, varagin{:}) * func(xr, varagin{:});

            if test < 0
                xu = xr;
            elseif test > 0
                xl = xr;
            else
                ea = 0;
            end

            if ea <= es | iter >= matix, break, end
        end

        root = xr;
        fx = func(xr, varagin{:});
