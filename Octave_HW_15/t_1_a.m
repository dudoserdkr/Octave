f = @(x) 1./(1+x.^2);

dx = 0.0001;

_x = 0:dx:1;

y = f(_x);

integral_sum = sum(y .* (dx))

integral_sum_with_limit = integral(f, 0, 1)
