t = -100:0.1:100;
x = (3.*t)./(1 + t.^3);
y = (3.*t.^2)./(1+t.^3);
plot(x, y)
