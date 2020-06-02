I = imread('coins.png');

nivel = graythresh(I);
B = imbinarize(I, nivel);

figure, imshow(B);

[etiquetas, nobjetos] = bwlabel(B, 4);
E = label2rgb(etiquetas);

figure, imshow(E);

% Determinacion del centro
hold on;
for k = 1:nobjetos
    [fila, col] = find(etiquetas == k);
    cy = mean(fila);  
    cx = mean(col);
    
    plot(cx,cy,'Marker','o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',10);
    hold on;
    plot(cx,cy,'Marker','*','MarkerEdgeColor','w')
end
