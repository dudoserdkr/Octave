% Визначаємо функцію
f = @(x) exp(x.^2);

n = 8;
a = 0;
b = 1;
x = linspace(a, b, n+1);
y = f(x);

% метод трапецій
h = (b - a) / n;
trap_integral = h * (0.5 * y(1) + sum(y(2:end-1)) + 0.5 * y(end));

builtin_trap_integral = trapz(x, y);

printf("Інтеграл за допомогою методу трапецій: %f\n", trap_integral);
printf("Інтеграл за допомогою вбудованої функції trapz: %f\n", builtin_trap_integral);
printf("Похибка методу: %f\n", abs(trap_integral - builtin_trap_integral));

