function root = false_position(func, xl, xu, es, maxit) if func(xl) * func(xu) > 0
    error('Root does not exist in this interval') end
    if nargin < 5, maxit = 50; end
    if nargin < 4, es = 0.001; end
    iter = 0;
    xr = xl;

    while (1)
        xr2 = xr
        xr = xu - func(xu) * (xl - xu) / (func(xl) - func(xu)) iter = iter + 1;
        if xr ~= 0, ea = abs((xr - xr2) / xr) * 100 end test = func(xu) * func(xr);

        if test > 0
            xu = xr;
        elseif test < 0
            xl = xr;
        else
            ea = 0
        end

        if ea <= es | iter >= maxit, break, end
    end

    root = xr;

    clc
    clear all
    Mx = inline('1.875*x.^2-15*x+22.5', 'x')
    format long
    false_position(Mx, 5.2, 6.2, 0.03)
