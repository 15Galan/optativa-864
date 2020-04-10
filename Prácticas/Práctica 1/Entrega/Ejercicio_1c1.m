% Como la imagen ic.tif no está
% en la carpeta de imágenes para
% las prácticas, usé WATER.TIF.
I = imread('WAFER1.TIF');
imshow(I)

J = imcrop;

% Seleccionar con el ratón
% la región de interés
imshow(J)
