clc
clear all
%x-axis
xx1 = (0:.01:3);
yy1 = (0:0);
%y-axis
xx2 = (0:0);
yy2 = (-3:.1:3);
%shear1
x1 = (0:.01:2);
v1 = 1.5 - 2 * x1;
%shear2
x2 = (2:.01:3);
v2 = 6 - 2 * x2;
%shear connection  lines
x3 = 0;
v3 = [0:0.1:1.5];
x4 = 2;
v4 = [-2.5:0.1:2];
%moment1
m1 = 1.5 * x1 - x1.^2;
%moment2
m2 = 6 * x2 - x2.^2 - 9;
%x-axis(bending)
xx3 = (0:.01:3);
yy3 = (0:0);
%y-axis(bending)
xx4 = (0:0);
yy4 = (-1:.01:1);
%plotting
subplot(2, 1, 2)
plot(xx3, yy3, '-black', xx4, yy4, '--black', x1, m1, '--b', x2, m2, '--b') xlabel('Distance(m)')
ylabel('Moment(kN-m)')
legend('Moment')
subplot(2, 1, 1)
plot(xx1, yy1, '-black', xx2, yy2, '-black', x1, v1, '--r', x2, v2, '--r', x3, v3, '-- r', x4, v4, '--r')
xlabel('Distance(m)')
ylabel('Shear(kN)')
legend('Shear')
title('Shear and Bending Moment Diagrams')

% clc
% clear all
% x1 = [0:0.1:2];
% V1 = 1.5 - 2 * x1;
% M1 = 1.5 * x1 - x1.^2;
% a = max(V1)
% b = max(M1)
% c = min(V1)
% d = min(M1)
% x2 = [2:0.1:3];
% V2 = 6 - 2 * x2;
% M2 = 6 * x2 - x2.^2 - 9;
% e = max(V2)
% f = max(M2)
% g = min(V2)
% h = min(M2)
