pkg load symbolic
clc

syms n

a = @(n) 1/n^(4/3);

sum = symsum(a, n, inf);

if sum != inf
  disp("Ряд є абсолютно збіжним ==> є умовно збіжним також")
else
  disp("Ряд не є абсолютно збіжним")
  a = @(n) (-1)^(n+1)/n^(4/3);
  sum = symsum(a_n, 1, inf);
  sum = double(sum);

  if sum == inf
    disp("Ряд розбіжний")
  else
    fprintf("Ряд умовно збігається і його сума: %f", sum)
  endif
endif
