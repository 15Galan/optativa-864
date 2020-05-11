I = imread('saturno.tif');

h = [1 2 1; 0 0 0; -1 -2 -1];
J = filter2(h, I);

imshow(J, []), colorbar
