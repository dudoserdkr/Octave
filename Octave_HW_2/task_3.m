x = -3:0.1:3

y = (1 + x.^2) ./ (1 + 2*x.^2)

x1 = x(x <= 0)
x2 = x(x > 0)

g1 = 3*sin(x1) - cos(x1).^2
g2 = 3*sqrt(1 + x2.^2)

plot(x, y, x1, g1, x2, g2)