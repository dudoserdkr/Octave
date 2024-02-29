clc
warning off
counter = 0
i = 3
while i < 10^2

  L = isprime(i)
  L1 = isprime(i + 2)

  if L == 1 & L1 == 1
    counter += 1;
  endif

  i += 2;
endwhile
disp(counter)
