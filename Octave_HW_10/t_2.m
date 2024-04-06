clc
A = [2, 7, 3, 1; 1, 3, 5, -2; 1, 5, -9, 8; 5, 18, 4, 5];
B = [5; 3; 1; 12];

X = [A, B];
R = rref(X);
[row, col] = size(R);
disp(R)
absurd = 0;

for i = 1:row
  if all(R(i,1:end - 1) == 0) && R(i, end) != 0
    absurd = 1;
  endif
endfor
if absurd == 0
  disp("СЛР сумісна, розв'язок:")
  disp(R)
else
  disp("СЛР несумісна")
endif
