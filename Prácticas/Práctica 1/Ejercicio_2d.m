I = imread('Galaxia.jpg');
J = imresize(I, 0.5, 'bilinear');

IR = imrotate(J,75);

imshow(IR)
