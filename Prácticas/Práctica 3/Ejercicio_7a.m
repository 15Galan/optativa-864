I = imread('spine.tif');


% Añadir ruido "Sal y Pimienta"
I = imnoise(I, 'salt & pepper', 0.02);

figure, imshow(I);      % Mucho ruido
figure, imhist(I);


% Igualar el histograma
[J,T] = histeq(I);
plot((0:255)/255,T);    % Transformación (igualación)

figure, imshow(J);      % Un poco de ruido
figure, imhist(J);


% Eliminar el ruido: filtro mediana (3x3)
F3 = medfilt2(J,[3 3]);

figure, imshow(F3);     % Ruido filtrado
figure, imhist(F3);


% Eliminar el ruido: filtro mediana
g = fspecial('average', [5 5]);

M = filter2(g,J)/255;

figure, imshow(M);
figure, imhist(M);
