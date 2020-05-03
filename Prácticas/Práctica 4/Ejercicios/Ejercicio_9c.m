I = imread('rice.tif');

% Realzado vertical
gv = [-1 0 1; -1 1 1; -1 0 1];
Jv = abs(filter2(gv, I))/255;

figure, imshow(Jv);


% Realzado horizontal
gh = [1 1 1; 0 1 0; -1 -1 -1];
Jh = abs(filter2(gh, I))/255;

figure, imshow(Jh);
