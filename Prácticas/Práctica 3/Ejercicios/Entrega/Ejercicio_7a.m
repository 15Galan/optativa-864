I = imread('Fig5.04(i).jpg');


% Añadir ruido "Sal y Pimienta"
I = imnoise(I, 'salt & pepper', 0.02);

figure, imshow(I);      % Mucho ruido
figure, imhist(I);


% Igualar el histograma
[J,T] = histeq(I);
plot((0:255)/255, T);   % Transformación (igualación)

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

% Puede apreciarse que la figura corrige en gran medida el ruido
% "Sal y Pimienta" usando el filtro mediana 3x3, mientras que con el filtro
% mediana normal no funciona tan bien

% Esto puede deberse a que como la imagen presenta varias figuras de
% colores sólidos, funciona mejor con un filtro que funciona en zonas
% pequeñas (3x3) que usando el valor genérico de la mediana de toda la
% imagen
