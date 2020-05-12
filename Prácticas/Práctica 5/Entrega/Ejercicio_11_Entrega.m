% Imágenes (una por apartado)
C = imread('cameraman.tif');
M = imread('coins.png');
F = imread('Fig5.26(a).jpg');
S = imread('saturno.tif');
L = imread('moon.tif');



% Ejercicio 11 a (ERROR)
[u,v] = freqspace(25, 'meshgrid');

H = sqrt(u.^2 + v.^2) < 0.5;

figure, imshow(filter2(H,C));   % Aplicar el filtro H a la imagen C



% Ejercicio 11 b
H = [0 -1 0; -1 4 -1; 0 -1 0];

figure, imshow(filter2(H,M));   % Aplicar el filtro H a la imagen M



% Ejercicio 11 c (ERROR)
H = fspecial('gaussian');

figure, imshow(filter2(H,F));   % Aplicar el filtro H a la imagen F



% Ejercicio 11 d
H = zeros(15,15);
H(5:10, 5:10) = 1;

% Función de ventana
h = fwind1(H, hamming(15));

figure, imshow(filter2(h,S));



% Ejercicio 11 e
[f1,f2] = freqspace(15, 'meshgrid');

Hd = zeros(15,15);
Hd(4:11, 4:11) = 1;

% Muestreo de frecuencias
h = fsamp2(Hd);

figure, imshow(filter2(h,L));
