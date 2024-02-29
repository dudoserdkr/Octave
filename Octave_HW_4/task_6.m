total_numbers = 1e7;
digits = 10;

generated_numbers = [];
while numel(generated_numbers) < total_numbers
    num = randi([10^(digits-1), 10^digits - 1]);
    mod2 = mod(num, 2)
    mod3 = mod(num, 3)
    mod5 = mod(num, 5)
    mod7 = mod(num, 7)
    mod11 = mod(num, 11)
    num_in_gennumbs = ismember(num, generated_numbers)
    if mod2 == 0 & mod3 == 0 & mod5 == 0 & mod7 == 0 & mod11 == 0
        continue;
    else
        if num_in_gennumbs == 0
          generated_numbers = [generated_numbers, num];
        endif
    endif
end

prime_count = sum(isprime(generated_numbers));

percent = (prime_count / total_numbers)

