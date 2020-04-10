% Como la imagen ic.tif no está
% en la carpeta de imágenes para
% las prácticas, usé WATER.TIF.

% También se puede hacer fijando
% [Xmin, Ymin, ancho y alto]
I = imread('WAFER1.TIF');
I1 = imcrop(I,[0 0 500 450]);

imshow(I)

figure, imshow(I1)
