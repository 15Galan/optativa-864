I = imread('Fig1.14(a).jpg');

% Realzar imagen
I = histeq(I);      % Transformación en escala de grises

figure, imshow(I);


% Generación de bordes
B = edge(I, 'canny');   % Detección de bordes "canny"

figure, imshow(B)


% Realzar usando I y B (bordes resaltados)
R = double(I)/255 + 0.1 * double(B);

figure, imshow(R);
