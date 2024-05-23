warning off
clc

n = 500;
a = @(n) 1./((3.*n-2).*(3.*n+1));

partial_sum  = sum(a([1:n]))

