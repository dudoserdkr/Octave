function [r_1, fi_1, x_2, y_2, r_3, fi_3, h_3, x_4, y_4, h_4, p_5, fi_5, teta_5, x_6, y_6, z_6] = t_2(x, y, z, r, fi, teta)
  %from decart to polar 1
  r_1 = sqrt(x^2+y^2)
  fi_1 = atan2(x, y)
  %from polar to decart 2
  x_2 = r*cos(fi)
  y_2 = r*sin(fi)
  %from decart to cylindric 3
  r_3 = sqrt(x^2+y^2)
  fi_3 = atan2(x, y)
  h_3 = z
  %form cylindric to decart 4
  x_4 = x_2
  y_4 = y_2
  h_4 = h_3
  %from decart to sphere_coords 5
  p_5 = sqrt(x^2+y^2+z^2)
  fi_5 = fi_1
  teta_5 = atan(r_1/z)
  %from sphere to decart 6
  x_6 = p_5*cos(fi)*sin(teta)
  y_6 = p_5*sin(fi)*sin(teta)
  z_6 = p_5*cos(teta)
endfunction
t_2(3, 4, -2, 5, pi/2, pi/3)
