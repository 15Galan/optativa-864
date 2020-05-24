I = imread('cameraman.tif');

figure, imshow(I);

% Crear el filtro para la imagen movida
h = fspecial('gaussian', 7, 10);            % Crear el filtro de movimiento
B = imfilter(I, h, 'symmetric', 'conv');    % Aplicar el filtro

figure, imshow(B);


% Restauracion 1
h1 = ones(size(h) - 4);         % Crea una matriz de unos
[J1, P1] = deconvblind(B, h1);  % Des-borrosear la imagen a ciegas

figure, imshow(J1);


% Restauracion 2
h2 = padarray(h1, [4:4], 'replicate', 'both');
[J2, P2] = deconvblind(B, h2);  % Des-borrosear la imagen a ciegas

figure, imshow(J2);


% Restauracion 3
h3 = padarray(h1, [2 2], 'replicate', 'both');
[J3, P3] = deconvblind(B, h3);  % Des-borrosear la imagen a ciegas

figure, imshow(J3);


% Restauracion 4
% Creacion del filtro
peso = edge(I, 'sobel', .3);    % Bordes usando el metodo Sobel (factor .3)
ee = strel('disk', 2);          % Crea una estructura de disco (factor 2)
peso = 1 - double(imdilate(peso, ee));  % Dilata la imagen y la transforma

peso(:, [1:3 end-[0:2]]) = 0;   % Imagen resultante, con bordes marcados

figure, imshow(peso);

% Restauracion
[J, P] = deconvblind(B, h3, 30, [], peso);  % Des-borrosear la imagen a ciegas

figure, imshow(J);
