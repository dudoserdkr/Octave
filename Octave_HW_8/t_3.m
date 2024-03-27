n = 100;
z1 = 0.9 + 0.4*i;
z2 = 0.9 + 0.5*i;
arr_z1 = []
arr_z2 = []
for i = 1:100
  new_z1 = z1^i;
  new_z2 = z2^i;
  arr_z1 = [arr_z1, new_z1];
  arr_z2 = [arr_z2, new_z2];
endfor
plot(arr_z1, "r");
hold on;
plot(arr_z2, "b");
hold off;
