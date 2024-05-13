y = @(x) 4 * sqrt(1 - (x ./ 5).^2);

S = 4 * integral(y, 0, 5);

y_for_x_0 = @(x) 4.*x.*sqrt(1 - (x ./ 5).^2);

x_0 = 1/S * integral(y_for_x_0, -5, 5);

y_for_y_0 = @(x) (4 * sqrt(1 - (x ./ 5).^2)).^2;

y_0 = 1/(2*S) * integral(y_for_y_0, -5, 5);

printf("Центром ваги кривої є точка (%f, %f)\nЇї площа - %f", x_0, y_0, S)
