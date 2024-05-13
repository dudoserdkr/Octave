f = @(x) abs(x);

dx = 0.00001;

_x = -1:dx:1;

y = f(_x);

integral_sum = sum(y .* (dx))

integral_sum_with_limit = integral(f, -1, 1)
