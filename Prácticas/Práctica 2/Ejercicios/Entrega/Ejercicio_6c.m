I = imread('Fig1.14(a).jpg');

I1 = im2double(I);  % Rango de la imagen en [0,1]
I2 = I1;

a = 0.5;

c = 0.7;
d = 0.9;

for n = 1:335
    for m = 1:594
        if (c < I1(m,n)) || (I1(m,n) > d)
            I2(m,n) = I1(m,n)*a;
            
        else
            I2(m,n) = a*c + (I1(m,n)-c)*(1-a*c)/(1-c);
            
        end
    end
end

figure, imshow(I);
figure, imshow(I2);
