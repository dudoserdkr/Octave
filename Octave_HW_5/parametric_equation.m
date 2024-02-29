func [parametric, general] = equation(A, B, C)
  if abs(A) == 0
    if abs(B) == 0
      error("Данні введені некорректно")
    else
      parametric = "-C / B * t"
    endif
  elseif abs(B) == 0
    if abs(a) == 0
      error("Данні введені некорректно")
    else
      parametric = "-C / A * t"
    endif
  else
    parametric = "x = -B * t, y = A*t - C/B"
  endif

