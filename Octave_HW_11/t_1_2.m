clc
format long
x_0 = 1/2;
x_1 = 1/12;

difference = abs(x_1 - x_0);

epsilon = 10^-100;

n = 3;

while difference > epsilon
  difference = 1/(n*(n+1));
  n += 1;

endwhile
disp(1/(n*(n+1)))
