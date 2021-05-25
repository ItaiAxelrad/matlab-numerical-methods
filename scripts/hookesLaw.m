clc
clear all
F = [11 12 15 9 12];
x = [0.013 0.020 0.009 0.010 0.012];
k = F / x;
U = (1/2) * k .* x.^2
H = max(U)
B = min(U)
