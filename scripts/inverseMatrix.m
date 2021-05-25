clc
clear all
A = [10 2 -1; -3 -6 2; 1 1 5];
Z = [27; -61.5; -21.5];
Ai = inv(A);
I = A * Ai
