I = imread('Fig5.04(i).jpg');

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

% El filtro de media no ha eliminado del todo el ruido, pero ha logrado
% disminuirlo lo suficiente para ver claramente las figuras de la imagen,
% aunque aún conserva los desperfectos a un nivel bastante notable

% En cambio, el filtro de mediana pese a tampoco haber suprimido el ruido
% por completo, presenta una mayor calidad que el filtro anterior y el
% ruido no es tan notable, más bien lo contrario; sin embargo, al haber
% corregido el ruido de esa forma los lados de las figuras se han visto más
% afectados y se notan más los desperfectos en ellos
