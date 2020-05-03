I = imread('saturno.tif');

figure, imshow(I);

h = fspecial('unsharp');
J = abs(filter2(h, I));

J1 = J/255;     % J1 = J/max(J(:));

figure, imshow(J1)
