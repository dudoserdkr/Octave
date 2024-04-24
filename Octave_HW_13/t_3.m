clc
warning off

addpath("C:/Users/dudos/Octave/Octave_HW_13")

U = [2, 6, 2, 0, -6; 4, 3, 3, 8, 5; -7, -4, -4, -14, -10; 3, 7, 5, 4, -3; 1, 2, 7, 7, 5];
V = [8, -4, 28, 16, 0; -2, -2, -4, -1, 6; 6, 6, 12, 3, -8; 8, 2, 22, 10, 8; 2, 17, -11, -14, 19];

U_lnz = t_1(U);
V_lnz = t_1(V);

U_plus_V = []

for i = 1:size(U_lnz, 2)
  column = U(:, U_lnz(i));
  U_plus_V = horzcat(U_plus_V, column);
endfor

for d = 1:size(V_lnz, 2)
  column = V(:, V_lnz(d));
  U_plus_V = horzcat(U_plus_V, column);
endfor

Dim_U_plus_V = size(t_1(U_plus_V), 2);
Dim_U = size(U_lnz, 2);
Dim_V = size(V_lnz, 2);
Dim_U_union_V = Dim_U + Dim_V - Dim_U_plus_V;

disp(Dim_U)
disp(Dim_V)
disp(Dim_U_plus_V)
disp(Dim_U_union_V)

