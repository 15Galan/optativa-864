I = imread('spine.tif');

% Añadir ruido "Sal y Pimienta" (figura 21.a)
I = imnoise(I, 'salt & pepper', 0.02);

figure, imshow(I);


% Añadir ruido gaussiano
J = imnoise(I, 'gaussian', 0, 0.01);
g = fspecial('average', [5 5]);

M1 = filter2(g,J)/255;
figure, imshow(M1);     % Figura 25.a

M2 = medfilt2(J,[5 5]);
figure, imshow(M2);     % Figura 25.b

