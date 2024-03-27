pkg load optim;

function y = func(x)
    y = abs(sin(x)) - 2 * x / (201 * pi);
end

interval = linspace(0, 201 * pi, 1000);

x0 = 0;

count = 0;

for i = 1:length(interval)
    x0 = interval(i);
    [x, fval, info] = fzero(@func, x0);

    if info == 1 && abs(fval) < 1e-6 && x >= 0 && x <= 201 * pi
        count = count + 1;
    end
end

count = count / 2;
