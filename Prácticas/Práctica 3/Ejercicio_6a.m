I = imread('motion01.512.tiff');

imshow(I);

figure, imhist(I)
figure, histeq(I)
figure, imhist(histeq(I))

% También se puede poner:
% J = imhisteq(I);
% imshow(J);