clc
warning off
function [triangle_area, vector_product] = vector_func(x1, y1, z1, x2, y2, z2)
  a = [x1,y1,z1];
  b = [x2,y2,z2];

  vector_product = cross(a, b);
  triangle_area = 0.5 * norm(vector_product)

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

[vect_prod, area] = vector_func(1, 4, 0, 5, 3, 0);

