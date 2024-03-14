function number = t_2(a)
  h = a;
  arr = [];
  while h > 0
    module = mod(h, 2);
    arr = [module, arr];
    h = fix(h/2);
  endwhile
  number = arr;
endfunction
