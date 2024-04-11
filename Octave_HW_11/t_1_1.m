clc
format long
x_0 = 0;
x_1 = 1/10;

difference = abs(x_1 - x_0);

epsilon = 10^-5;

n = 2;

while difference > epsilon
  x_0 = (n^2)/(3*n^ + 3*n + 1);
  n += 1;
  x_1 = (n^2)/(3*n^ + 3*n + 1);
  difference = abs(x_1 - x_0);
endwhile
disp((n^2)/(3*n^ + 3*n + 1))
