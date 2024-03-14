function result = t_9(a, X0, c, m)
  randoms = []
  for i = i:1000
    X0 = mod(a*X0 + c, m)
    randoms = [X0, randoms]
  endfor

