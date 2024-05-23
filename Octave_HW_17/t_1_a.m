pkg load symbolic
clc

syms n

a_n = 1 / ((3 * n - 2) * (3 * n + 1));

sum = symsum(a_n, 1, inf);
sum = double(sum)

if sum == inf
  disp("Ряд розбіжний")
else
  fprintf("Ряд збігається і його сума: %f", sum)
endif
