clc
x = (1/2);
n = 2;
difference = 100;

epsilon = 10^-11;

f = sin(x)/x;

while difference > epsilon
  x = (1/2)^n;
  f1 = sin(x)/x;
  n += 1;

  difference = abs(f1 - f);
  f = f1;
endwhile
disp(f1)
disp(-f1)
