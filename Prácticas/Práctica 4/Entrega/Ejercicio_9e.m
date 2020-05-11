I = imread('BUG.TIF');

figure, imshow(I);

h = [1 1 1; 0 1 0; -1 -1 -1];
J = abs(filter2(h, I))/255;

figure, imshow(J);
