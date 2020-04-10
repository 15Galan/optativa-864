% Coordenadas del foco (a,b)
a = 200;
b = 200;

% Construcción de la imagen M x N
M = 400;
N = 400;

for x = 1:M
    for y = 1:N
        I(x,y) = (255-sqrt((x-a)^2+(y-b)^2)) / 255;
    end
end

% Mostrar la imagen
imshow(I)
