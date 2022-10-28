clear all
r = [.9 2 3 5]
d = [1.2 3 4 6]

if d < r
    v = pi * d.^3/3;
elseif d <= 3 * r
    v1 = pi * r.^3/3;
    v2 = pi * r.^2 .* (d - r);
    v = v1 + v2
else
    v = 'overtop';
end
