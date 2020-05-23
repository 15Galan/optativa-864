[f1,f2] = freqspace(15, 'meshgrid');

H0 = zeros(15,15);
H0(12:15, 12:15) = 1;

H = fwind1(H0, hamming(15));

colormap(jet(64));
freqz2(H,[32 32]);

pause(3);               % Se usa para ver el cambio del histograma
mesh(f1, f2, abs(H));   % Cambio del histograma
pause(3);               % Se usa para ver el cambio del histograma

h = ifft2(H(7:15, 7:15));

I = imread('saturno.tif');

B = filter2(real(h), I);

figure, imshow(B, [min(min(B)) max(max(B))]);
