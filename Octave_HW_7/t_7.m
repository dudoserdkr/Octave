function = t_7(isbn)
    if length(isbn) != 10 || any(isbn < '0' | isbn > '9')
        isValid = false;
        return;
    end
    sum = 0;
    for i = 1:9
        sum += (11 - i) * str2num(isbn(i));
    end
    checkDigit = mod(11 - mod(sum, 11), 11);
    if checkDigit == 10
        isValid = (isbn(10) == 'X');
    else
        isValid = (str2num(isbn(10)) == checkDigit);
    end
endfunction

