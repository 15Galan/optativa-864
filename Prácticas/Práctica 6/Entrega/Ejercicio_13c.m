I = imread('flowers.tif');


% Recortar imagen
I = I(10+[1:256], 222+[1:256], :);

figure, imshow(I);


% Crear el filtro para la imagen movida
long = 20;
ang = 12;

h = fspecial('motion', long, ang);          % Crear el filtro de movimiento
J = imfilter(I, h, 'circular', 'conv');     % Aplicar el filtro

% figure, imshow(J);


% Generar ruido para la imagen
ruido = 0.1 * randn(size(J));   % Crear el ruido
B = imadd(J, im2uint8(ruido));  % Aplicar el ruido

figure, imshow(B);


% Restauracion A
W = deconvwnr(B, h);    % Des-borrosear la imagen con filtro Wiener

figure, imshow(W);


% Restauracion B
NSR = sum(ruido(:).^2)/sum(im2double(I(:)).^2);
W1 = deconvwnr(B, h, NSR);  % Des-borrosear la imagen con filtro Wiener

figure, imshow(W1);
