I = imread('moon.tif');

figure, imshow(I);

h = fspecial('unsharp');
J = abs(filter2(h, I));

J1 = J/255;     % J1 = J/max(J(:));

figure, imshow(J1)

% Usando la función 'fspecial' se puede crear un filtro 2D predefinido; en
% este caso se usa para generar el filtro "unsharp", de modo que como se ha
% visto anteriormmente, se genera una imagen J aplicando el filtro a la
% imagen I.

% Además, en esta ocasión se genera una imagen J1 resultado de dividir los
% valores de J entre 255 (o entre el máximo valor de J) para realzarla.
