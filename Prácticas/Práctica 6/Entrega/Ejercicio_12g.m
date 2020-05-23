I = imread('saturno.tif');
figure, imshow(I);

F = fft2(I);

[f1,f2] = freqspace(25, 'meshgrid');

H = sqrt(f1.^2+f2.^2) > 1.1;
H1 = ifft2(H(13:25,13:25));

B = filter2(real(H1), I);

figure, imshow(B, [min(min(B)) max(max(B))]);
