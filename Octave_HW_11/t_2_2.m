clc
inf = 0;
sup = 0;
max_iter = 1000;
epsilon = 10^-5;
n = 0;

while n < max_iter
  x_n = (-1)^n * ((n+1)/(n+2)) + sin(pi*n/2);
  if x_n > sup
    sup = x_n;
  elseif inf > x_n
    inf = x_n;
  endif
  n += 1;
endwhile
disp(sup)
disp(inf)
