clc
epsilon = 10^-25;
difference = 100;

x = 1.5;
n = 2;

f1 = ((x^2-x-2)^20)/(x^3-12*x+16);

while difference > epsilon
  x += (1/2)^n;
  f2 = ((x^2-x-2)^20)/(x^3-12*x+16);
  difference = abs(f2 - f1);
  f1 = f2;
  n += 1;
endwhile
disp(f2)
