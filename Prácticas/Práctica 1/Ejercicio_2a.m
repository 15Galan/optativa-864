I = imread('Galaxia.jpg');
imshow(I)

% Multiplicar la imagen por 1,3
J = I * 1.3;

% Tamaño de la imagen (matriz)
[M,N] = size(J);

% Sumar 50 a cada píxel
for x = 1:M
    for y = 1:N
        J(x,y) = J(x,y) + 50;
    end
end

% Mostrar la imagen
imshow(J)


% Comparada con la imagen original, esta
% presenta una mayor saturación y brillo
