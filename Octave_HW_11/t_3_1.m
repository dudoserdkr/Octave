clc
epsilon = 10^-25;
difference = 100;

x = 1.5;
n = 2;

f1 = (x^3-2*x^2-4*x+8)/(x^4-8*x^2+16);

while difference > epsilon
  x += (1/2)^n;
  f2 = (x^3-2*x^2-4*x+8)/(x^4-8*x^2+16);
  difference = abs(f2 - f1);
  f1 = f2;
  n += 1;
endwhile
disp(f2)
