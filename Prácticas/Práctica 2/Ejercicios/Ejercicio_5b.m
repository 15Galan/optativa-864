I = imread('ngc4024l.tif');

imshow(I);

I1 = im2double(I);  % Rango de la imagen en [0,1]

a = 0.5;
c = 220/255;

for n = 1:368
    for m = 1:174
        if I1(m,n) < c
            I2(m,n) = I1(m,n)*a;
            
        else
            I2(m,n) = a*c + (I1(m,n)-c)*(1-a*c)/(1-c);
        end
    end
end

figure, imshow(I2), imhist(I2)
