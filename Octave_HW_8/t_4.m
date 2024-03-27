% 1 = cos(2*pi*k) + i*sin(2*pi*k)
function result = t_4(n)
  prime_roots = [];
  other_roots = [];

  for d = 0:(n - 1)
    z = complex(cos(2*pi*d / n), sin(2*pi*d / n));
    if gcd(n, d) == 1
      prime_roots = [prime_roots, z];
    else
      other_roots = [other_roots, z];
    endif
  endfor
  plot(prime_roots, 'r');
  hold on;
  plot(other_roots, 'b');
  hold off;
  return
endfunction
