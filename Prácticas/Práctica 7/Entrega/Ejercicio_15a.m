I = imread('rice.tif');

nivel = graythresh(I);
B = im2bw(I, nivel);

figure, imshow(B);


whos;
[etiquetas, nobjetos] = bwlabel(B, 4);

nobjetos;
E = label2rgb(etiquetas);

figure, imshow(E);
