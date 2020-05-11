I = imread('moon.tif');

h = [1 2 1; 0 0 0; -1 -2 -1];
J = filter2(h, I);

imshow(J, []), colorbar

% Definiendo la matriz h -un filtro de pasa alta- esta se aplica como
% filtro a la imagen I con la función 'filter2', generando la imagen J.
