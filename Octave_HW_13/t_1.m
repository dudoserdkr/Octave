function result = t_1(A)

  Gauss = rref(A);

  number_of_vectors = [];

  for i = 1:size(Gauss, 2)
    current_column = Gauss(:, i);
    count_of_1 = 0;
    elements_sum = 0;
    for d = 1:size(current_column, 1)
      if current_column(d) == 1
        count_of_1 += 1;
      endif
      elements_sum += abs(current_column(d));
    endfor
    if count_of_1 == 1 && elements_sum == 1
      number_of_vectors = [number_of_vectors, i];
    endif
  endfor
  result = number_of_vectors;
endfunction
A = [3, -5, 2, 7, -1; 3, 8, 1, 2, 5; 7, -8, 4, 2, 6; 2, 19, 0, 9, 3; -18, 6, -9, 6, -25];

Matrix_MLNZ = t_1(A); % Номера ЛНЗ векторів

disp(size(Matrix_MLNZ, 2)) % ранк матриці
disp(Matrix_MLNZ)
