I = imread('rice.tif');

I1 = im2double(I);  % Rango de la imagen en [0,1]
I2 = I1;

[fil,col] = size(I);

x = 0.8;

for n = 1:col
    for m = 1:fil
        if I1(m,n) < x
            I2(m,n) = 0;
            
        else
            I2(m,n) = 1;
        end
    end
end

figure, imshow(I);
figure, imshow(I2);
