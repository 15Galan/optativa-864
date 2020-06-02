I = imread('circuit.tif');


% Hacer binaria
nivel = graythresh(I);
I = im2bw(I, nivel);

figure, imshow(I);


% Detectar rectangulos
h = strel('rectangle', [20 15]);
BE = imerode(I, h);

figure, imshow(BE);


% Dilatar figuras
BD = imdilate(BE, h);

figure, imshow(BD);
