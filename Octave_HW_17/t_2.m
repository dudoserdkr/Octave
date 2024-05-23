pkg load symbolic
clc

syms n

a = @(n) 1000^n / factorial(n);

ratio = a(n+1)/(a(n));

limit_ratio = limit(ratio, n, inf)

if limit_ratio < 1
  disp("Ряд збіжний")
elseif limit_ratio > 1
  disp("Ряд розбіжний")
else
  disp("Треба інша ознака")
endif
