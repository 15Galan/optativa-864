I = imread('Galaxia.jpg');

% Reduce la imagen a 40x30;
% 30 filas y 40 columnas
J = imresize(I,[100 50]);

figure, imshow(J)
