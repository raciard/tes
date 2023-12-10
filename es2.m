x1 = [1 2 1];
x2 = [3 2 1];

c = conv(x1, x2);

subplot(2,2,1)
stem([0:2],x1)
title("X1")

subplot(2,2,2)
stem([0:2],x2)
title("x2")

subplot(2,2, 3)
stem([0:4],c)
title("x1 * x2")

x1
x2
fprintf('Convoluzione tra x1 e x2: ');
c