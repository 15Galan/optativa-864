I = im2double(imread('letras.jpg'));

figure, imshow(I);

[M,N] = size(I);

for i = 1:3:10
    F = fft2(I);
    H = lpfilter('ideal', M, N, 5*i);  % Debe descargarse de Internet
    G = H.*F;

    J = real(ifft2(G));

    figure, imshow(J);
end
