I = imread('Fig1.14(a).jpg');

I1 = im2double(I);  % Rango de la imagen en [0,1]

[fil,col] = size(I);

a = 0.5;
c = 220/255;

for n = 1:col
    for m = 1:fil
        if I1(m,n) < c
            I2(m,n) = I1(m,n)^2 * a;
            
        else
            I2(m,n) = a*c + (I1(m,n)^2-c)*(1-a*c)/(1-c);
        end
    end
end

figure, imshow(I);
figure, imshow(I2);
