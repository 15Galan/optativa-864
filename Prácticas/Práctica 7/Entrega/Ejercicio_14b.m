I = imread('Microscopio.png');

figure, imshow(I);


Ic = imcomplement(I);
B = im2bw(Ic, graythresh(Ic));

figure, imshow(Ic);
figure, imshow(B);


h = strel('disk', 6);
Bc = imclose(B, h);
Bo = imopen(Bc, h);

figure, imshow(Bc);
figure, imshow(Bo);


Is = B & Bo;

figure, imshow(Is);
