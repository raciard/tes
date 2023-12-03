n = -5000000:5000000;
n_0 = 2;
A = 5;
N = 6;

% Inizializzazione funzioni
xa = exp(-n) .* (n >= 0);
xb = A;
xc = A * exp(-(1i * 2 * pi * n) / N);
xd = A .* (n >= 0);
xe = A .* ((n > (n_0 - N)) & (n <= (n_0 + N)));

% Calcolo energia e potenza per ciascun segnale
E_xa = sum(abs(xa).^2);
P_xa = E_xa / length(n);

E_xb = sum(abs(xb).^2);
P_xb = E_xb / length(n);

E_xc = sum(abs(xc).^2);
P_xc = E_xc / length(n);

E_xd = sum(abs(xd).^2);
P_xd = E_xd / length(n);

E_xe = sum(abs(xe).^2);
P_xe = E_xe / length(n);

% Visualizzazione dei risultati
disp('Energia e potenza dei segnali:');
disp(['Energia xa: ', num2str(E_xa)]);
disp(['Potenza xa: ', num2str(P_xa)]);
disp(['Energia xb: ', num2str(E_xb)]);
disp(['Potenza xb: ', num2str(P_xb)]);
disp(['Energia xc: ', num2str(E_xc)]);
disp(['Potenza xc: ', num2str(P_xc)]);
disp(['Energia xd: ', num2str(E_xd)]);
disp(['Potenza xd: ', num2str(P_xd)]);
disp(['Energia xe: ', num2str(E_xe)]);
disp(['Potenza xe: ', num2str(P_xe)]);
