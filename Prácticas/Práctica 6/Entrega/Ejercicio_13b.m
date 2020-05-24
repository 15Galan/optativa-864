I = imread('Fig5.26(b).jpg');

figure, imshow(I);

% Crear el filtro para la imagen movida
long = 100;
ang = 135;

h = fspecial('motion', long, ang);

% Restaurar la imagen a partir del filtro
W = deconvwnr(I, h);

figure, imshow(W);
