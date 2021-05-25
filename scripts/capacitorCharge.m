clear all
q = 12; %INITIAL CHARGE
R = 50; %RESISTANCE
L = 5; %INDUCTANCE
C = 10^ - 4; %CAPACITANCE
t = [0:0.01:0.7];
y = q * exp((-R * t) / (2 * L)) .* cos(sqrt(1 / (L * C)) - (R / (2 * L))^2 .* t);
plot(t, y, '--r')
xlabel('time(s)')
ylabel('Charge')
title('Capacitor Charge as a Function of Time')
