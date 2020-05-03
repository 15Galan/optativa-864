I = imread('rice.tif');

g = [1 1 1; 0 0 0; -1 -1 -1];
J = abs(filter2(g, I));
B = J > 0.27 * (max(J(:)) - min(J(:)));

imshow(B)
