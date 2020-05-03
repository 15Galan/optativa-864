I = imread('rice.tif');

imshow(I)

B1 = edge(I, 'sobel');
B2 = edge(I, 'prewitt');
B3 = edge(I, 'canny');

figure, imshow(B1)
figure, imshow(B2)
figure, imshow(B3)
