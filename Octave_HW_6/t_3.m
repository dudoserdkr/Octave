function [x_out, y_out, angle] = t_3(A, B, C, A1, B1, C1)
  L_x = A == 0;
  L_y = B == 0;
  if L_x == 1
    x = -10:1:10;
    y = -C/B;
  elseif L_y == 1
    y = -10:1:10;
    x = -C/A;
  else
    x = -10:1:10;
    y = (-C - A.*x)/B;
  end

  L1_x = A1 == 0;
  L1_y = B1 == 0;
  if L1_x == 1
    x1 = -10:1:10;
    y1 = -C1/B1;
  elseif L1_y == 1
    y1 = -10:1:10;
    x1 = -C1/A1;
  else
    x1 = -10:1:10;
    y1 = (-C1 - A1.*x1)/B1;
  end

  plot(x, y, x1, y1);

  delta = A*B1 - B*A1;
  if delta == 0
    disp("Lines are parallel or coincident");
    x_out = NaN;
    y_out = NaN;
    angle = NaN;
    return;
  else
    delta_x = -C*B1 + B*C1;
    delta_y = A*C1 - A1*C;
    x_out = delta_x / delta;
    y_out = delta_y / delta;
  end

  m = -A/B;
  m1 = -A1/B1;
  angle_rad = atan(abs((m1 - m) / (1 + m*m1)));
  angle = angle_rad * (180/pi);

  disp(["The angle between lines in degrees is: ", num2str(angle)]);
endfunction
