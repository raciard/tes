n = -500:500;
delta = zeros(size(n));
delta(n == 0) = 1;

% Definizione di x1 e x2
%x1 = -delta + 4*circshift(delta, 1) + 5*circshift(delta, 2) - 2*circshift(delta, 3) - 3*circshift(delta, 4);
%x2 = -2*delta + 3*circshift(delta, 1) + 5*circshift(delta, 2) + 4*circshift(delta, 3) - circshift(delta, 4);
x1=audioread("four_noise.wav");
x2=audioread("three_noise.wav");
% Definizione di x_ref
%x_ref = -delta + 2*circshift(delta, 2) - circshift(delta, 4);
x_ref = audioread('three_ref.wav');
% Primo metodo
alpha1 = norm(x_ref) / norm(x1);
x1_sign = alpha1 * x1;
ex1 = x1_sign - x_ref;
Ex1 = sum(ex1.^2);

alpha2 = norm(x_ref) / norm(x2);
x2_sign = alpha2 * x2;
ex2 = x2_sign - x_ref;
Ex2 = sum(ex2.^2);

fprintf('Energia di e1: %f\n', Ex1);
fprintf('Energia di e2: %f\n', Ex2);
%secondo metodo

% Calcolo delle correlazioni
Rref=xcorr(x_ref);
Rc1=xcorr(x_ref,x1_sign);
Rc2=xcorr(x_ref,x2_sign);

%normalizzazione
alpha1=norm(Rref)/norm(Rc1);
alpha2=norm(Rref)/norm(Rc2);
Rc1_sign=alpha1.*Rc1;
Rc2_sign=alpha2.*Rc2;

%differenza di segnali
DifE1=sum(abs((Rc1_sign - Rref)).^2);
DifE2=sum(abs((Rc2_sign- Rref)).^2);

fprintf('Energia di differenza 1: %f\n', DifE1);
fprintf('Energia di differenza 2: %f\n', DifE2);

