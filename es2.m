x1 = [1 2 2]
x2 = [3 2 1]

c = conv(x1, x2)
waitfor(stem([0: (length(c) -1)], c))

