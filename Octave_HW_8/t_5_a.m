Imz = -10:0.2:10;
Rez = sqrt(4 + Imz.^2);
arr_z = [];
for i = 1:length(Imz)
  z = complex(Rez(i), Imz(i));
  arr_z = [arr_z, z];
endfor
plot(arr_z);
