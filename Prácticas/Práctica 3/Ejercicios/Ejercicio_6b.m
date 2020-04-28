I = imread('moon.tif');

imshow(I);

figure, imhist(I)
figure, histeq(I)
figure, imhist(histeq(I))

[J,T] = histeq(I);
plot((0:255)/255,T);