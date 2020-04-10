I = imread('text.tif');

imshow(I)

% Arrays para los valores de
% las columnas y las filas
c = [90, 16];
r = [197, 67];

J = bwselect(I,c,r,8);

figure, imshow(J)
