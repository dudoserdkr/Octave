format long
n = pi % Замените на ваше действительное число

s = num2str(n, '%.15f');

s = strrep(s, ".", "");

counter = 0;

for i = 2:10
  numb = str2double(s(i));

  L = isprime(numb);

  if L == 1
    disp(numb)
    counter += 1;
  endif
endfor
disp(["Кількість: ", num2str(counter)]);
