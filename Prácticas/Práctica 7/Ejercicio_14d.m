I = imread(['teeth.png']);

figure, imshow(I);

B = zeros(11, 9);
B(2:10, 2:7) = 1;
B1 = B;

B = ones(11, 9);
B(2:10, 2:7) = 0;
B(1:11, 9) = 0;
B2 = B;

C = bwhitmiss(I, B1, B2);
[fila, col] = find(C);
C(fila-4:fila+4, col-3:col+2) = 1;

figure, imshow(C);
