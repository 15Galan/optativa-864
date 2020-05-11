I = imread ('saturno.tif');

% Aplicación de ruido gaussiano
J = imnoise(I, 'gaussian' , 0, 0.01);

figure, imshow(J);


% Restauración con filtro media (5x5)
g = fspecial('average', [5 5]);
M1 = filter2(g, J)/255;

figure, imshow(M1);


% Realzado con el filtro "unsharp"
h = fspecial('unsharp');
M2 = abs(filter2(h, M1));

figure, imshow(M2);
