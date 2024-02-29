Tabl = [1 2 3; 4 5 6; 7 8 9]
q = input("Введіть 1, якщо хочете зробити операцію над рядком, 2 - над стовпчиком\n")

if isequal(round(q), 1)12
  w = input("1 - додати/відняти рядки\n2 - помножити рядок на число\n3 - переставити місцями\n")

  if isequal(w, 1)
    n = input("Вкажіть перший рядок\n")
    m = input("Вкажіть другий рядок\n")
    x = input("Вкажіть число, на яке треба помножити\n")
    Tabl(n, :) = Tabl(n, :) .+ x.*Tabl(m, :)

  elseif isequal(w, 2)
    n = input("Вкажіть рядок\n")
    x = input("Вкажіть число\n")
    Tabl(n, :) = x.*Tabl(n, :)

  elseif isequal(w, 3)
    n = input("Вкажіть перший рядок\n")
    m = input("Вкажіть другий рядок1\n")
    z = Tabl(n, :)
    Tabl(n, :) = Tabl(m, :)
    Tabl(m, :) = z
  end
else
  w = input("1 - додати/відняти стовбчики\n2 - помножити стовбчик на число\n3 - переставити місцями\n")
  if isequal(w, 1)
    n = input("Вкажіть перший стовбчик\n")
    m = input("Вкажіть другий стовбчик\n")
    x = input("Вкажіть число, на яке треба помножити\n")
    Tabl(:, n) = Tabl(:, n) .+ x.*Tabl(:, m)

  elseif isequal(w, 2)
    n = input("Вкажіть стовбчик\n")
    x = input("Вкажіть число\n")
    Tabl(:, n) = x.*Tabl(:, n)

  elseif isequal(w, 3)
    n = input("Вкажіть перший стовбчик\n")
    m = input("Вкажіть другий стовбчик\n")
    z = Tabl(:, n)
    Tabl(:, n) = Tabl(:, m)
    Tabl(:, m) = z
  end
end
