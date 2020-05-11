I = imread('WAFER1.TIF');

g = [1 0 -1; 1 0 -1; 1 0 -1];       % Matriz traspuesta
J = abs(filter2(g, I));
B = J > 0.27 * (max(J(:)) - min(J(:)));

imshow(B)
