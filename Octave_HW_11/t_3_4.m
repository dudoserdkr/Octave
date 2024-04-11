clc
epsilon = 10^-11;
difference = 100;

x = (pi/4)*(1/2);
n = 2;

f1 = (tan(x))^(tan(2*x));

while difference > epsilon
  x += (pi/4)*(1/2)^n;
  f2 = (tan(x))^(tan(2*x));
  difference = abs(f2 - f1);
  f1 = f2;
  n += 1
endwhile
disp(f2)
