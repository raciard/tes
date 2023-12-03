n=[-10:10];

y=5*cos((5*pi*n)./3);

figure
set(gca,'Fontsize',14)
stem(n,y,'k')
xlabel('n')
title('5cos(5πn/3)')
axis([-10 10 -5 5])
grid on

% dal grafico ottenuto possiamo vedere come il periodo vale 6.