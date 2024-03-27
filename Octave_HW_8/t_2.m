function result = t_2(z)
  fi = arg(z);
  module = abs(z)
  result = sprintf("%d*(cos(%d) + i*sin(%d))", module, fi, fi);
endfunction
t_2(complex(2, 3))
