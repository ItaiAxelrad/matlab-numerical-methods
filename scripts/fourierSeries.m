clc
clear all
x = -2 * pi:.01:4 * pi;
y1 = 5 * sin(x);
y2 = 4 / pi * (sin(x) + sin(3 * x) / 3 + sin(5 * x) / 5 + sin(7 * x) / 7);
X = 0;
Y = -5:.01:5;
plot(x, y1, x, y2, '--g', x, X, 'r', X, Y, 'r')
title('Fourier Series')
xlabel('Displacement')
ylabel('Amplitude')
legend('y1', 'y2')
