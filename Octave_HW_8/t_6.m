dx = [0.1, 0.2, 0.2, 0.1, 0.15];
dy = [0.1, 0.2, 0.2, 0.1, 0.15];
deg = [2, 3, 2, 3, 2];
n = [2, 2, 3, 5, 3];
x = -10;
y = -10;
arr_z = [];
for a = 1:length(deg)
  x = -10 - dx(a);
  y = -10 - dy(a);
  while x < 10
    x += dx(a);
    while y < 10
      y += dy(a);
      z = complex(x, y)
      abs_z = abs(z);
      condition = abs_z^(deg(a));
      if mod(round(condition), n(a)) == 0
        arr_z = [arr_z, z];
      endif
    endwhile
  endwhile
endfor
plot(arr_z)
