clc
format long
warning off

epsilon = 10^-10;
y = @(x)x^x;

n = 1;
delta = (1/2)^n;

x0 = 2;

y1_delta = y(x0 + delta);
y1 = y(x0);

dydx = (y1_delta - y1)/delta;

difference = 100;

while difference > epsilon
  n += 1
  delta = (1/2)^n;

  y1_delta = y(x0 + delta);
  y1 = y(x0);
  dydx1 = (y1_delta - y1)/delta;

  difference = abs(dydx1 - dydx);
  dydx = dydx1;
endwhile

tangent = @(x)y(x0) + dydx*(x - x0)
normal = @(x)(x - x0)/dydx + y(x0)

x3 = -10:0.1:10;

y_tangent = tangent(x3);
y_normal = normal(x3);

plot(x3, y_tangent, x3, y_normal, x3, y_main_func)
