clc
format long
epsilon = 10^-3;

n = 1;
x = 1 + (1/2)^n;
y = @(x)sqrt(x + sqrt(x + sqrt(x)));

y1 = y(x);

difference = 100;

while difference > epsilon
  n += 1;
  x = (1/2)^n;
  y2 = y(x);
  difference = abs(y2 - y1);
  y1 = y2;
endwhile
disp(y2)
disp(y2 - gradient(y, 1, epsilon))
