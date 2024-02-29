A = [2 1 3; 1 1 1; 1 3 2];
B = [10; 6; 13];

X = inv(A) * B;

AX = A * X;
AX = round(AX);
B = round(B);
%Перевірка на правильність розв'язку;
is_equal = isequal(AX, B);

if is_equal
  final_word = "розв'язок правильний";
else
  final_word = "розв'язок неправильний";
end

disp(final_word)
