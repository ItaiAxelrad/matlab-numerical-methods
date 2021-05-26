x = [-4:0.5:6];
y = 217.3 * x.^3 + 57.55 * x.^3 + 5.35 * x.^2 + 256 * x + 6416.5; plot(x, y)
xlabel('x')
ylabel('y')
title('System of Equations Solved')
