clc
sup = 0;
inf = 0;
max_iter = 500;
n = 0;
while n < max_iter
  x_n = (1+2*(-1)^n)/(3+(-1)^n);
  if x_n > 0
    sup = x_n;
  else
    inf = x_n;
  endif
  n += 1;
endwhile
disp(sup)
disp(inf)
