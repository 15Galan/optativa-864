% Creación de la figura (un cuadradado)
I = ones(100, 100);
I(25:75, 25:75) = 0;

figure, imshow(I, 'initialMagnification', 'fit');


% Transformada de Fourier discreta de la figura
F = fft2(I);
F1 = log(1 + abs(F));

figure, imshow(F1, 'initialMagnification', 'fit');


% Gráfica de frecuencia
% freqz2(F1);             % Interfiere con la muestra de la figura anterior
