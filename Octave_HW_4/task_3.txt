warning off
function result = pi_func(N)
  pr = primes(N);
  result = size(pr, 2);
end

result = pi_func(10^6);
disp(result);
