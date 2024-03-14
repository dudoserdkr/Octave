clc
addpath("‪C:\Users\dudos\Octave\Octave_HW_7") % імпортували функцію з попереднього завдання
function count = t_3(a, b)
  a_bit = t_2(a)
  b_bit = t_2(b)
  len_a = length(a_bit);
  len_b = length(b_bit);
  delta_len = max(len_a, len_b) - min(len_a, len_b);
  if len_a > len_b
    b_bit = [zeros(1, delta_len), b_bit]
  elseif len_b > len_a
    a_bit = [zeros(1, delta_len), a_bit]
  endif
  max_len = max(length(a_bit), length(b_bit));
  counter = 0;
  for i = 1:max_len
    if a_bit(i) != b_bit(i)
      counter += 1;
    endif
  endfor
  count = counter;
endfunction
