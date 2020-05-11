I = imread('coins.png');

imshow(I)

% Filtrado de Sobel
I1 = edge(I, 'sobel');      % Detección de contornos

figure, imshow(I1);


% Filtrado de Prewitt
I2 = edge(I, 'prewitt');    % Detección de contornos

figure, imshow(I2);


% Filtrado de Canny
I3 = edge(I, 'canny');      % Detección de contornos

figure, imshow(I3);
