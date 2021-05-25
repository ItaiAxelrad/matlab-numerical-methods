clc
clear all
x = linspace(0, 3 * pi / 2);
s = sin(x)
sf = x - x.^3 / factorial(3) + x.^5 / factorial(5) + x.^7 / factorial(7)
plot(x, s, '-r', x, sf, '--+')
xlabel('x')
ylabel('y')
title('Maclaurin Series and Sine Functions')
legend('sin(x)', 'sf')
