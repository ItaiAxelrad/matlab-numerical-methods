function root = Roots(func, xl, xu, Ead)
    if func(xl) * func(xu) > 0, error('No Sign Change'); end if nargin < 4, Ead = 0.000001; end
    xr = xl;
    n = round(1 + log2((xu - xl) / Ead) + 0.5); for i = 1:n
    xr2 = xr;
    xr = (xl + xu) / 2;
    if xr ~= 0, ea = abs((xr - xr2) / xr) * 100; end
    test = func(xu) * func(xr);

    if test > 0
        xu = xr;
    elseif test < 0
        xl = xr;
    else
        ea = 0;
    end

end

root = xr;
clc
clear all
Fdc = inline('1.875*x.^2-15*x+22.5', 'x')
format long
Roots(Fdc, 1.5, 3)
