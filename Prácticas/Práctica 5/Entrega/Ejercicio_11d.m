[f1,f2] = freqspace(15, 'meshgrid');

H = zeros(15,15);
H(5:10, 5:10) = 1;

mesh(f1,f2,H), axis([-1 1 -1 1 0 1.2]), colormap(jet(64));


% Función de ventana
h = fwind1(H, hamming(15));

figure, freqz2(h, [32 32]), axis([-1 1 -1 1 0 1.2]);