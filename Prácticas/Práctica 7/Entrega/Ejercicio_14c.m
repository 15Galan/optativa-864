I0 = imread('Fig9.11(a).jpg');

es = strel('square', 3);

I1 = imopen(I0, es);
I2 = imclose(I1, es);   % Eliminacion de ruido

figure, imshow(I0);
figure, imshow(I1),


D1 = bwmorph(I1, 'thin', 1);
DF = bwmorph(I2, 'thin', Inf);

figure, imshow(D1);
figure, imshow(DF);
