clc
clear all
E = 1E5;
A = 7E16;
R = 8.314;
T = [273:333];
Ti = T.^ - 1;
k = A * exp((-R * T. \ E));
subplot(1, 2, 1):plot(T, k, '-r')
xlabel('Temperature(K)')
ylabel('Reaction Rate(1/s)')
title('Temp Dependence of Chemical Reactions')
legend('Relationship')
subplot(1, 2, 2);
semilogy(Ti, k, '--b')
xlabel('Adjusted Temp(1/K)')
ylabel('Adjusted Rate')
title('Adjusted Temp. Dependence of Chemical Reactions')
legend('Adjusted Relationship')
