% Crear una figura con la función phantom()
I = phantom(1984, 'Shepp-Logan');

figure, imshow(I);


% Transformada de Fourier discreta de la figura
F = fft2(I);
F1 = fftshift(F);
F2 = log(abs(F1));

% Figura centrada en (0,0) con una barra desde -1 hasta 5
figure, imshow(F2, [-1 5], 'YDATA', [-100,100], 'XDATA', [-100,100]);


% Mapa de color del espectro de Fourier
colormap('jet');
colorbar;
