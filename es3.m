n = -10:10; % per il plot n = -10:10
n_0 = 2;
A = 5;
N = 6;



figure('Name','Es 3')
% Inizializzazione funzioni
xa = exp(-n) .* (n >= 0);
xb = A .* ones(1,length(n));
xc = A * exp(-(1i * 2 * pi * n) / N);
xd = A .* (n >= 0);
xe = A .* ((n >= (n_0 - N)) & (n <= (n_0 + N)));

% Calcolo energia e potenza per ciascun segnale
E_xa = sum(abs(xa).^2);
P_xa = E_xa / length(n);
subplot(3,2,1)
stem(n, xa)
title("e^-n")


E_xb = sum(abs(xb).^2);
P_xb = E_xb / length(n);
subplot(3,2,2)
stem(n, xb)
title("A")

E_xc = sum(abs(xc).^2);
P_xc = E_xc / length(n);
subplot(3,2,3)
stem(n, xa)
title("Ae^(-j2πn/N)")

E_xd = sum(abs(xd).^2);
P_xd = E_xd / length(n);
subplot(3,2,4)
stem(n, xd)
title("A per n >= 0")

E_xe = sum(abs(xe).^2);
P_xe = E_xe / length(n);
subplot(3,2,5)
stem(n, xe)
title("A per [n-n0] <= N")

% Visualizzazione dei risultati
disp('Energia e potenza dei segnali:');
fprintf('\n')

disp(['Energia xa: ', num2str(E_xa)]);
disp(['Potenza xa: ', num2str(P_xa)]);
fprintf('\n')
disp(['Energia xb: ', num2str(E_xb)]);
disp(['Potenza xb: ', num2str(P_xb)]);
fprintf('\n')

disp(['Energia xc: ', num2str(E_xc)]);
disp(['Potenza xc: ', num2str(P_xc)]);
fprintf('\n')

disp(['Energia xd: ', num2str(E_xd)]);
disp(['Potenza xd: ', num2str(P_xd)]);
fprintf('\n')

disp(['Energia xe: ', num2str(E_xe)]);
disp(['Potenza xe: ', num2str(P_xe)]);