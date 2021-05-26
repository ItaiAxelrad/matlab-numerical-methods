clc
clear all
%Supports and Properties
Ay = 37.5;
By = 37.5;
E = 200E9;
xsection = .02;
W = 50;
L = 3;
%Position
X1 = 0:.05:1;
X2 = 1:.05:3;
X3 = -.5:.01:3.5;
X4 = 1; X5 = 3; X6 = 0;
%Shear Force Equation
V1 = -W * X1.^2/6;
V2 = -W * X2.^2/6 + Ay;
V3 = 0;
V4 = -8.333:.01:29.166;
V5 = -37.5:.01:0;
V6 = -50:.01:50;
%Moment Equations
M1 = -W * X1.^3/18;
M2 = -W * X2.^3/18 + Ay * X2 + 3 * W / 2 - 3 * Ay;
%Shear Force Diagram
subplot(2, 1, 1)
plot(X1, V1, X2, V2, X3, V3, '-r', X4, V4, 'blue', X5, V5, 'blue', X6, V6, '-r')
title('Shear Force Diagram')
xlabel('Position (m)')
ylabel('N')
legend('Shear')
%Moment Diagram
subplot(2, 1, 2)
plot(X1, M1, X2, M2, '-blue', X3, V3, '-r', X6, V6, '-r')
title('Moment Diagram')
xlabel('Position (m)')
ylabel('N*m')
legend('Moment')
%Max Values
max(abs(V1))
max(abs(V2))
max(abs(M1))
max(abs(M2))
%Roots
moment_ab = roots([-W / 6 * L 0 0 0])
moment_bc = roots([-W / 6 * L 0 Ay 0])
