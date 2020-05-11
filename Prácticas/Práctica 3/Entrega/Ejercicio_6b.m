I = imread('saturno.tif');

imshow(I);

figure, imhist(I)
figure, histeq(I)
figure, imhist(histeq(I))

[J,T] = histeq(I);
plot((0:255)/255, T);

% Como se puede observar, en este caso la imagen 19.b no ha perdido tanta 
% calidad como hizo la imagen "moon.tif" en el ejemplo. Esto puede que se
% deba a que la imagen actual, "saturno.tif", posea un fondo más uniforme

% Comparando las gráficas de la transformación entre "moon.tif" y
% "saturno.tif" se puede observar que: la segunda presenta un crecimiento
% escalonado más uniforme que la primera, que crece muchísimo para los
% valores iniciales y lentamente para los siguientes
