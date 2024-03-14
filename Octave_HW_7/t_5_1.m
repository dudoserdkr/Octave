function module = t_5_1(a, b, n)
  product = 1;
  for i= 1:b
    product = product * mod(a, n);
  endfor
  product = mod(product, n);
  module = product;
endfunction
