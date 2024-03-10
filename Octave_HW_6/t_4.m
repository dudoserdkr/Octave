function [d] = t_4(A, B, C, x0, y0)
  d = abs(A*x0 + B*y0 + C)/sqrt(A^2+B^2)
endfunction
