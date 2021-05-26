clc
clear all
x = [1:6]
m = -3.6 * x - ((x.^3) / 18) + 17.6;
z = fzero(@(x) - 3.6 * x - ((x.^3) / 18) + 17.6, 5)
Results:x = 1 2 3 4 5 6

z = 3.9429

Ay = 4.4;
Cy = 17.6;

%x-axis
xx1 = (0:.01:14);
yy1 = (0:0);

%y-axis
xx2 = (0:0);
yy2 = (-10:.1:5);

%shear1
x1 = (0:.01:4);
v1 = 4.4;

%shear2
x2 = (4:.01:10);
v2 = -3.6 - ((x2 - 4).^2) / 6;

%shear3
x3 = [10:.01:14];
v3 = 8 - 2 * (x3 - 10);

%shear connection lines
x5 = 4;
v5 = [-3.6:4.4];
x6 = 10;
v6 = [-9.6:8];

%moment1
m1 = 4.4 * x1;

%moment2
m2 = 17.6 - 3.6 * (x2 - 4) - ((x2 - 4).^3) / 18;

%moment3
m3 = -25.6 + 8 * (x3 - 10) - (x3 - 10).^2

%x-axis(bending)
xx3 = (0:.01:14);
yy3 = (0:0);

%y-axis(bending)
xx4 = (0:0);
yy4 = (-20:.01:20);

subplot(2, 1, 2)
plot(xx3, yy3, '-black', xx4, yy4, '--black', x1, m1, '--b', x2, m2, '--b', x3, m3, '--b')
xlabel('Distance(in)')
ylabel('Moment(kip-in)')
subplot(2, 1, 1)
plot(xx1, yy1, '-black', xx2, yy2, '-black', x1, v1, '--r', x2, v2, '--r', x3, v3, '--r', x5, v5, '--r', x6, v6, '--r')
xlabel('Distance(in)')
ylabel('Shear(kip)')
