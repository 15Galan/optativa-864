I = imread('coins.png');

g = [1 1 1; 0 0 0; -1 -1 -1];
J = abs(filter2(g, I));
B = J > 0.27 * (max(J(:)) - min(J(:)));

figure, imshow(B);

% Tras definir la matriz g como el filtro de detección de bordes
% horizontales, se genera una nueva imagen J como el valor absoluto de cada
% valor de la matriz resultante de aplicarle a la imagen I la matriz g.

% Posteriormente se genera una nueva imagen binaria B (0, negro; 1, blanco)
% mediante valores booleanos. Estos valores se obtienen multiplicando un
% factor a la diferencia del valor máximo y mínimo de la imagen J; y
% comprobando si el valor original de J es mayor que el resultado.
% Si el valor original supera al obtenido en la operación, se detecta un
% valor perteneciente al borde (blanco); en caso contrario, no (negro).
