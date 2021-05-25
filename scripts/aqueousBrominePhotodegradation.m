clc
clear all
t = [10:10:60];
c = [3.4 2.6 1.6 1.3 1.0 0.5];
tf = [0:5:75];
cf = 4.84 * exp(-0.034 * tf);
plot(t, c, 'k+', tf, cf, '-r')
xlabel('time(min)')
ylabel('concentration(ppm)')
title('Photodegredation of Aqueous Bromine')
