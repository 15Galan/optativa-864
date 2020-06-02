I = imread('rice.tif');
J = im2double(I);

figure, imshow(J);


B = blkproc(J, [32 32], 'min(x(:))');
B1 = im2bw(B, [256 256], 'bicubi');

figure, imshow(B1);


D = J - B1;

figure, imshow(D);


A = imadjust(D, [0 max(D(:))], [0 1], 1);

figure, imshow(A);


% Otra opcion: Aplicacion directa del operador TopHat
I = imread('rice.tif');

se = strel('disk', 10);
U = imtophat(I, se);

figure, imshow(U);
