pkg load symbolic
clc

syms n

a = @(n) (((n+1)/n)^n / 3^n)^n;

limit_ratio = limit(a, n, inf);

if limit_ratio < 1
  disp("Ряд збіжний")
elseif limit_ratio > 1
  disp("Ряд розбіжний")
else
  disp("Треба інша ознака")
endif
