clc
epsilon = 10^-11;
difference = 100;

x = 1/2;
n = 2;

f1 = (sqrt(1+tan(x)) - sqrt(1+sin(x)))/(x^3);

while difference > epsilon
  x = (1/2)^n;
  f2 = ((sqrt(1+tan(x)) - sqrt(1+sin(x)))/(x^3));
  difference = abs(f2 - f1);
  f1 = f2;
  n += 1;
endwhile
disp(f2)
