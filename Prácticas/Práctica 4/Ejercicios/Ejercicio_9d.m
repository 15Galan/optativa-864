I = imread('spine.tif');

% Realzar imagen
I = histeq(I);

figure, imshow(I);


% Generación de bordes
B = edge(I, 'canny');

figure, imshow(B)


% Realzar usando I y B
R = double(I)/255 + 0.1*double(B);

figure, imshow(R);
