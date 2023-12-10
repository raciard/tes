x = @(n) n .* (n <= 10 & n > 0)


n = [-20: 20]
y1 = x(n + 5)
y2 = x(-n + 5)
y3 = x(2 * n)
y4= x(n + 10) - x(-n + 10) - (n==0)

yPari = (x(n) + x(-n))/2
yDispari = (x(n) - x(-n)) /2

figure('name', 'Esercizio 1')
subplot(4,3,1)

stem(n, x(n))
title("x[n]")

subplot(4,3,2)
stem(n,y1)
title("x[n + 5]")

subplot(4,3,3)
stem(n,y2)
title("x[-n + 5]")

subplot(4,3,4)
stem(n,y3)
title("x[2 * n]")

subplot(4,3,5)
stem(n,y4)
title("x[n + 10] - x[-n + 10] - δ[n]")

subplot(4,3,7)
stem(n,yPari)
title("Parte pari")


subplot(4,3,8)
stem(n,yDispari)
title("Parte dispari")

