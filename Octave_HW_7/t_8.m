function result = t_8(a)
  len_a = length(a);
  count = 0;
  for i = 1:len_a
    if a(i) == 1
      count += 1;
    endif
  endfor
    if mod(count, 2) == 0
    a = [a, 0];
  else
    a = [a, 1];
  endif
  result = a;
endfunction
