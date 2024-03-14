function name = t_1(d, m, y)
  K = mod(y, 100);
  J = fix(y / 100);
  h = (d + fix((13 * (m + 1)) / 5) + K + fix(K / 4) + fix(J / 4) - 2 * J);
  h = mod(h, 7);
  if h == 0
    name = 'Sat';
  elseif h == 1
    name = 'Sun';
  elseif h == 2
    name = 'Mon';
  elseif h == 3
    name = 'Tue';
  elseif h == 4
    name = 'Wed';
  elseif h == 5
    name = 'Thu';
  elseif h == 6
    name = 'Fri';
  endif
endfunction
