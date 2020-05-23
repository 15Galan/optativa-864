[f1,f2] = freqspace(16, 'meshgrid');

H = zeros(16,16);
H(5:12, 5:12) = 1;
H(7:10, 7:10) = 0;

freqz2(H, [32 32]);

pause(3);           % Se usa para ver el cambio del histograma
mesh(f1, f2, H);    % Cambio del histograma
pause(3);           % Se usa para ver el cambio del histograma

h = ifft2(H(9:16, 9:16));

I = imread('saturno.tif');

B = filter2(real(h), I);

figure, imshow(B, [min(min(B)) max(max(B))]);
