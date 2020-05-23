I = imnoise(imread('rice.tif'), 'salt & pepper', 0.02);

figure, imshow(I);

I = im2double(I);
[M,N] = size(I);

F = fft2(I);
H = lpfilter('btw', M, N, 25);  % Debe descargarse de Internet
G = H.*F;

I1 = real(ifft2(G));

figure, imshow(I1);
