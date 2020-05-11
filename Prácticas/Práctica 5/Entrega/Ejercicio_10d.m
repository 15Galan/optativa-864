% Coordenadas del foco (a,b)
a = 0;
b = 200;

% Construcción de la imagen M x N (400 x 400)
for x = 1:400
    for y = 1:400
        I(x,y) = (255 - sqrt((x-a)^2 + (y-b)^2)) / 255;
    end
end

% Mostrar la imagen
figure, imshow(I);


% Transformada de Fourier discreta de la figura
F = fft2(I);        % F = fft2(I, 256, 256);
F1 = fftshift(F);
F2 = log(1 + abs(F1));

figure, imshow(F2, 'YDATA', [-100,100], 'XDATA', [-100,100]);


% Mapa de color del espectro de Fourier
colormap('jet');
colorbar;
