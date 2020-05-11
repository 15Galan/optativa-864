I = imread('WAFER1.TIF');

g = [1 0 -1; 1 0 -1; 1 0 -1];       % Matriz traspuesta (vertical)
J = abs(filter2(g, I));
B = J > 0.27 * (max(J(:)) - min(J(:)));

imshow(B)

% Se produce el mismo efecto que en el ejercicio anterior, solo que la
% matriz g es la traspuesta, de forma que los bordes detectados no serán
% horizontales, sino verticales.
