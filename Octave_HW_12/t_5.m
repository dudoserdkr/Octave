% Використання символьних обчислень для правила Лопіталя
pkg load symbolic % Завантажуємо пакет символьних обчислень

% a) границя
syms x;
f_a = (1 + x)^(1/x) - exp(1);
g_a = x;

% Застосування правила Лопіталя
lim_a = limit(diff(f_a, x) / diff(g_a, x), x, 0);

% b) границя
f_b = x - 1 - log(x);
g_b = (x - 1)*log(x);

% Застосування правила Лопіталя
lim_b = limit(diff(f_b, x) / diff(g_b, x), x, 1);

% Вивід результатів
disp(['Границя a) ', char(lim_a)]);
disp(['Границя b) ', char(lim_b)]);

