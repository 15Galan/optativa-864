I = imread('5.2.09.tiff');

imshow(I);

figure, imhist(I)
figure, histeq(I)
figure, imhist(histeq(I))

% He elegido la imagen "5.2.09.tiff" porque
% presentaba una tonalidad bastante clara y
% pensé que sería más fácil mejorar su calidad