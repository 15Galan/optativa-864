% Creación de la figura (un círculo)
I = ones(300, 300);

for i = 1:100
    for j = 1:200
        if (i-50)^2 + (j-50)^2 < 700
            I(i,j) = 0;
        end
    end
end

figure, imshow(I, 'initialMagnification', 'fit');


% Transformada de Fourier discreta de la figura
F = fft2(I);            % F = fft2(I, 256, 256);
F1 = log(1 + abs(F));

figure, imshow(F1/4, 'initialMagnification', 'fit');


% Mapa de color del espectro de Fourier
colormap('jet');
colorbar;
