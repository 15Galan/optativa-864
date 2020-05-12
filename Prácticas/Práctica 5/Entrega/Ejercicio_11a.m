[u,v] = freqspace(25, 'meshgrid');

H = sqrt(u.^2 + v.^2) < 0.5;

meshz(u,v,H)
