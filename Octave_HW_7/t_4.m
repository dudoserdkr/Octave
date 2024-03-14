L = isprime(5463458053)
Hate_number = 5463458053
if L == 1
  product = 1
  i = 1
  While Hate_number - i > 10^8
    product *= (-1)*i
    if product > Hate_number
      product = mod(product, Hate_number)
    endif
    i += 1
  [g, x, y] = gcd(product, Hate_number)
  disp(-x + Hate_number)
