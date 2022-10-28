clear;
x0 = [10; 1];
condition = 1;
itt = 0;

while condition > .00001
    itt = itt + 1;
    x1 = x0(1, 1);
    x2 = x0(2, 1);
    delta_f = [36 - 10 * x1 - 8 * x2; 36 - 10 * x2 - 8 * x1];
    d1 = delta_f(1);
    d2 = delta_f(2);
    d = [d1; d2];
    rho = (36 * d1 + 36 * d2 - 10 * d1 * x1 - 10 * d2 * x2 - 8 * d2 * x1 - 8 * d1 * x2) / (10 * d1.^2 + 10 * d2.^2 + 16 * d1 * d2);
    obfun = 36 * x1 + 36 * x2 - 5 * x1.^2 - 8 * x1 .* x2 - 5 * x2.^2;
    newx = x0 + rho * d;
    condition = abs(x0 -newx);
    x0 = newx;
end
