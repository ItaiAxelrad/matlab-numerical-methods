function z = f(x, y)
    u1 = cos(x);
    u2 = sin(x);
    z = (u1) ./ (u2 + y + 1.2);

    clc
    clear all

    x = 0:.2:20;
    y = 0:.2:20;
    u1 = cos(x);
    u2 = sin(x);
    f(x, y)

    % Plot 3 curves versus x, for values of y=5, 10, 15.
    subplot(2, 2, 1);
    plot(x, f(x, 5), x, f(x, 10), x, f(x, 15));

    % pseudo color plot
    subplot(2, 2, 2)
    [x, y, z] = peaks;
    pcolor(x, y, z)
    shading faceted
    colorbar
    cmap = colormap(cool(2));

    % meshgrid
    subplot(2, 2, 3)
    [x, y] = meshgrid(0:20);
    z = (cos(x)) ./ (sin(x) + y + 1.2);
    mesh(x, y, z)
    cmap = colormap(cool(2));

    % contour map
    subplot(2, 2, 4)
    [x, y, z] = peaks;
    [x, y] = meshgrid(0:100);
    z = (cos(x)) ./ (sin(x) + y + 1.2);
    contour(x, y, z)
    cmap = colormap(cool(2));
    axis;
