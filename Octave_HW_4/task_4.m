warning off
function result = pi_func(vec)
  result = zeros(size(vec));
  for i = 1:length(vec)
    N = vec(i);
    pr = primes(N);
    result(i) = size(pr, 2)
  endfor
end
x = 1:1:10^3

y = x ./ log(x)

y1 = pi_func(x)

plot(x, y, x, y1)
