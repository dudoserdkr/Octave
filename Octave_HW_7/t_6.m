function sols = t_6(a, b, n)
  d = gcd(a, n);
  if mod(b, d) != 0
    sols = "No solutions";
    return;
  end

  a = a / d;
  b = b / d;
  n = n / d;
  sols = [];
  [g, x, y] = gcdExtended(a, n);
  x0 = mod(x * b, n);

  for i = 0:(d-1)
    sols = [mod(x0 + i*n, n*d), sols];
  endfor
endfunction

function [g, x, y] = gcdExtended(a, b)
  if b == 0
    x = 1;
    y = 0;
    g = a;
    return;
  else
    [g, x1, y1] = gcdExtended(b, mod(a, b));
    x = y1;
    y = x1 - (floor(a / b) * y1);
  end
endfunction
