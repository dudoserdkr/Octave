function [parametric, general] = parametric_equation(A, B, C, D, t, A1, B1, C1, D1, u, v)
  if abs(A) == 0 && abs(B) == 0
    error("Данні введені некоректно")
  elseif abs(B) == 0
    parametric = [-C / A * t, 0];
  elseif abs(A) == 0
    parametric = [0, -C / B * t];
  else
    parametric = [-B * t, A * t - C / B];
  endif

  if A1 == 0 && B1 == 0 && C1 == 0
    error("Данні введені некоректно")
  endif

  x0 = D1 / A1;
  y0 = 0;
  z0 = 0;

  if A1 != 0
    v1 = [1; 0; -A1 / C1];
    v2 = [0; 1; -B1 / C1];
  elseif B1 != 0
    v1 = [1; -(D1 + A1) / B1; 0];
    v2 = [0; 0; 1];
  else
    v1 = [0; 1; -(B1 + D1) / C1];
    v2 = [1; 0; -A1 / C1];
  endif

  parametric_plane_x = x0 + u * v1(1) + v * v2(1);
  parametric_plane_y = y0 + u * v1(2) + v * v2(2);
  parametric_plane_z = z0 + u * v1(3) + v * v2(3);

  general = [parametric_plane_x, parametric_plane_y, parametric_plane_z];
endfunction
