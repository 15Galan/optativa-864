% Creación de la figura (un cuadradado)
I = ones(100, 100);
I(25:75, 25:75) = 0;

figure, imshow(I, 'initialMagnification', 'fit');


% Transformada de Fourier discreta de la figura
F = fft2(I);
F1 = fftshift(F);
F2 = log(1 + abs(F1));

figure, imshow(F2, 'YDATA', [-100,100], 'XDATA', [-100,100]);


% Gráfica de frecuencia
% freqz2(F1);             % Interfiere con la muestra de la figura anterior
