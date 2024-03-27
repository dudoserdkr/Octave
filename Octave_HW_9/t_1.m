a = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
n = 1:1:20;
b = 2*.n;
aub = size(union(a, b))
auub = size(intersect(a, b))
a1 = size(setdiff(a, b))
a2 = size(setdiff(b, a))
size(union(a1, a2))
size(cartprod(aub, aub))
size(cartprod(a, auub))
size(cartprod(b, a))

