function q = t_4(a, b)
    if a >= b
        a = z
        a = b
        b = z
    end
    middle = (a + b) / 2;

    q = double(int64(middle * 1e6)) / 1e6;

    while q <= a || q >= b
        q = double(int64((q + middle) * 1e6)) / 1e6;
    end
endfunction
