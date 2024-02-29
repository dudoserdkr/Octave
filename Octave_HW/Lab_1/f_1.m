format long

f = fopen("output.txt", "w")

for i = 1:20
    res = factorial(i)
    fprintf(f, '%d! = %d\n', i, res)
end

fclose(f)

