pkg load statistics
function r = t_2(A)
    [m, n] = size(A);
    max_rank = min(m, n);
    epsilon = 10^(-10);

    for k = max_rank:-1:1
        C = combnk(1:m, k);
        D = combnk(1:n, k);
        for i = 1:size(C, 1)
            for j = 1:size(D, 1)
                sub_matrix = A(C(i, :), D(j, :));
                if abs(det(sub_matrix)) > epsilon
                    r = k;
                    return;
                end
            end
        end
    end
    r = 0;
end
A = [3, -5, 2, 7, -1; 3, 8, 1, 2, 5; 7, -8, 4, 2, 6; 2, 19, 0, 9, 3; -18, 6, -9, 6, -25];

t_2(A)
% Мінорний ранг завжди буде рівний рангу матриці
