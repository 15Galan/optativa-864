I = imread('spine.tif');

imshow(I);

J = imadjust(I,[0 0.247],[]);

imshow(J)
