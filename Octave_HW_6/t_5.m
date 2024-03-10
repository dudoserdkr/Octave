clc
function [] = t_5(A, B, C, D, A1, B1, C1, D1)
  [x, y] = meshgrid(-10:1:10, -10:1:10);
  z = (-D - A*x - B*y) / C;
  z1 = (-D1 - A1*x - B1*y) / C1;

  figure;
  hold on;
  surf(x, y, z, 'FaceAlpha',0.5);
  surf(x, y, z1, 'FaceAlpha',0.5);
  title('Visualization of Two Planes');
  xlabel('X');
  ylabel('Y');
  zlabel('Z');
  grid on;
  view(3);
  hold off;
end

