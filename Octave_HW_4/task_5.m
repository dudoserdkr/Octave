random = randi([10^9, 10^10 - 1], 1, 10^7);
prime_count = size(random)(1, 2);
counter = 0;

for i = 1:10^7
  n = random(1, i);
  L = isprime(n);
  if L == 1
    counter += 1;
  endif
endfor
percent = counter/prime_count * 100

