clc
clear all
f(9) = fzero(@(x)x^5 - 12.1 * x^4 + 40.59 * x^3 - 17.015 * x^2 - 71.95 * x + 35.88, 9) x = [-1.5:0.1:6.7];
y = x.^5 - 12.1 * x.^4 + 40.59 * x.^3 - 17.015 * x.^2 - 71.95 * x + 35.88; plot(x, y, 'square')
title('Polynomial Function');
xlabel('x')
ylabel('y')
legend('f(x)')
x1 = [1:3];
z = x1.^5 - 12.1 * x1.^4 + 40.59 * x1.^3 - 17.015 * x1.^2 - 71.95 * x1 + 35.88
