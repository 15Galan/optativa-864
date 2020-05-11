I = imread('spine.tif');

imshow(I);

I1 = im2double(I);
I2 = I1;

for n = 1:490
    for m = 1:367
        I2(m,n) = I1(m,n)*255/63;
    
        if I2(m,n) > 1
            I2(m,n) = 1;
        end
    end
end

figure, imshow(I2), imhist(I2)
