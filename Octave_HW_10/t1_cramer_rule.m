A = [1, -1, -6, -4; 3, -1, -6, -4; 2, 3, 9, 2; 3, 2, 3, 8];
b = [6; 2; 6; -7];
D = det(A);
x1 = det([b, A(:,2:4)]) / D;
x2 = det([A(:,1), b, A(:,3:4)]) / D;
x3 = det([A(:,1:2), b, A(:,4)]) / D;
x4 = det([A(:,1:3), b]) / D;
X = [x1; x2; x3; x4];
disp(X)

