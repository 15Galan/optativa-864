I = imread('7.1.01.tiff');

% Crear el filtro para la imagen movida
long = 31;
ang = 11;

h = fspecial('motion', long, ang);
B = imfilter(I, h, 'circular', 'conv');

figure, imshow(B);

% Restaurar la imagen usando el filtro
W = deconvwnr(B, h);

figure, imshow(W);
