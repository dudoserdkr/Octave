clc
addpath("‪C:\Users\dudos\Octave\Octave_HW_7")
function result = t_5_2(a, b, m)
  binaryVector = t_2(b)
  binaryVector = flip(binaryVector);
  r = 1;
  for i = 1:length(binaryVector)
    if binaryVector(i) == 1
      r = mod(r*a, m);
    endif
    a = mod(a^2, m);
  endfor
  result = r;
endfunction
t_5_2(7, 13, 4)
