[f1,f2] = freqspace(15, 'meshgrid');

Hd = zeros(15,15);
Hd(4:11, 4:11) = 1;

mesh(f1,f2,Hd), axis([-1 1 -1 1 0 1.2]), colormap(jet(64));


% Muestreo de frecuencias
h = fsamp2(Hd);

figure, freqz2(h,[32 32]), axis([-1 1 -1 1 0 1.2]);
