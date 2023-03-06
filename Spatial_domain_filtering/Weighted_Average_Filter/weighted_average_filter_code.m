clc;
clear all;
input_image = imread('coloredchips.png');
noisy_image = imnoise(input_image,'salt & pepper',0.05);
red_channel   = noisy_image(:,:,1);
green_channel = noisy_image(:,:,2);
blue_channel  = noisy_image(:,:,3);
red_out     = fwavg(red_channel);
green_out   =  fwavg(green_channel);
blue_out    = fwavg(blue_channel);
output_image = cat(3,red_out,green_out,blue_out);
subplot(1,3,1); %plotting
imshow(input_image);
title('original image');
subplot(1,3,2);
imshow(noisy_image);
title('noisy image');
subplot(1,3,3);
imshow(uint8(output_image));
title('Weighted average Filter Output Image');
function filter = fwavg(x)
    p = zeros(size(x)+2);  
    [m,n] = size(p);
    for i =2:m-1
        for j = 2:n-1
            p(i,j) = x(i-1,j-1); % Zero Padding
        end
    end
    output= zeros(size(x));
    w = [1,2,1;2,4,2;1,2,1];
    for i = 2:m-1
        for j = 2:n-1
            l = 1;
            sum = 0;
            for g = i-1:i+1
                b = 0;
                for h = j-1:j+1
                    b =b+1;
                    sum = sum+p(g,h)*w(l,b);
                end
                l=l+1;
            end
            output(i-1,j-1) = sum/sum(w);
        end
    end
    filter = output;
end