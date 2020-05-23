I = imread('saturno.tif');

I = imnoise(I, 'salt & pepper', 0.02);
F = fft2(I);

[f1,f2] = freqspace(25, 'meshgrid');

H = sqrt(f1.^2+f2.^2) < 0.5;
H1 = ifft2(H(13:25, 13:25));

B = filter2(real(H1), I);

figure, imshow(I);
figure, imshow(B, [min(min(B)) max(max(B))]);
