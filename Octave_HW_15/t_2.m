f = @(x) x.^2 - 1 - sqrt(1-x.^2);

% f(1) == 0 && f (-1) == 0

dx = 0.00001;

_x = -1:dx:1;

y = f(_x);

integral_sum = sum(y .* (dx))

integral_sum_with_limit = integral(f, -1, 1)
