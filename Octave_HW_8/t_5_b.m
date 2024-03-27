% Параметри еліпса
a = 2; % Велика піввісь
c = 1; % Відстань від центру до фокусу
b = sqrt(a^2 - c^2); % Мала піввісь

% Параметричне рівняння еліпса
theta = linspace(0, 2*pi, 100);
x = a * cos(theta);
y = b * sin(theta);

% Побудова
plot(x, y)
axis equal
grid on
xlabel('Реальна частина')
ylabel('Уявна частина')
title('|z - 1| + |z + 1| = 4')

