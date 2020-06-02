I = imread('ngc4024m.tif');

figure, imshow(I);

se = strel('disk',3);
E = imerode(I,se);
D = imdilate(E,se);     % D = imtophot(I);

F = I - D;

figure, imshow(F);
