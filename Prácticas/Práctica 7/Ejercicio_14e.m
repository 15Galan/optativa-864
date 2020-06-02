I = imread('cell.tif');

figure, imshow(I);


B = edge(I, 'sobel', (graythresh(I)*.1));

figure, imshow(B);


h90 = strel('line', 3, 90);
h0 = strel('line', 3, 0);
Bd = imdilate(B, [h90 h0]);

figure, imshow(Bd)


Br = imfill(Bd, 'holes');
Bs= imclearborder(Br, 4);

figure, imshow(Br);
figure, imshow(Bs);


hd = strel('diamond',1);
Bfinal = imerode(Bs,hd);

figure, imshow(Bfinal);


BL = bwperim(Bfinal);
Segout = I;
Segout(BL) = 255;

figure, imshow(Segout);
