function [mixed_product, is_coplanar, is_dots_coplanar] = vector_func_2(varargin)
  a = [varargin(1),varargin(2),varargin(3)];
  b = [varargin(4),varargin(5),varargin(6)];
  c = [varargin(7),varargin(8),varargin(9)];
  A = [a; b; c];
  mixed_product = det(A)

  if abs(mixed_product) == 0
  is_coplanar = 1
  else
  is_coplanar = 0
  endif

  v1 = [varargin(10) - varargin(19), varargin(11)- varargin(20), varargin(12)- varargin(21)];
  v2 = [varargin(13) - varargin(19), varargin(14)- varargin(20), varargin(15)- varargin(21)];
  v3 = [varargin(16) - varargin(19), varargin(17)- varargin(20), varargin(18)- varargin(21)];

  B = [v1; v2; v3];
  mixed_product1 = det(B)

  if abs(mixed_product1) == 0
  is_dots_coplanar = 1
  else
  is_dots_coplanar = 0
  endif

  x = [varargin(10) varargin(13) varargin(16)];
  y = [varargin(11) varargin(14) varargin(17)];
  z = [varargin(12) varargin(15) varargin(18)];

  plot3(x, y, z, 'o');
  hold on

  quiver3(0, 0, 0, a(1), a(2), a(3), 0, 'maxheadsize', 0.2, 'color', 'r');
  hold on;
  quiver3(0, 0, 0, b(1), b(2), b(3), 0, 'maxheadsize', 0.2, 'color', 'b');
  hold on;
  quiver3(0, 0, 0, c(1), c(2), c(3), 0, 'maxheadsize', 0.2, 'color', 'g');


  set(gca, 'xlim', [-1, 6], 'ylim', [-1, 6], 'zlim', [-20, 1]);
  set(gca, 'View', [30 10], 'box', 'on');
  xlabel('X'); ylabel('Y'); zlabel('Z');
  grid on;
  hold off;
end
[mixed_product, is_coplanar, is_dots_coplanar] = vector_func2(1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3)
