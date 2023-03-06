clc;
clear all;
input_image = imread('coloredchips.png');
noisy_image = imnoise(input_image,'salt & pepper',0.05);
red_channel = noisy_image(:,:,1);
green_channel = noisy_image(:,:,2);
blue_channel = noisy_image(:,:,3);
red_out = favg(red_channel);
green_out =  favg(green_channel);
blue_out = favg(blue_channel);
output_image = cat(3,red_out,green_out,blue_out);
subplot(1,3,1);
imshow(input_image);
title('original image');
subplot(1,3,2);
imshow(noisy_image);
title('noisy image');
subplot(1,3,3);
imshow(uint8(output_image));
title('Average Filter Output Image');

function fout = favg(A)
    [a,b]=size(A);
    M=zeros(a+2,b+2); % zero Padding
    for i=2:a+1
        for j=2:b+1
            M(i,j)=A(i-1,j-1);
        end
    end
    for i=2:a+1
        for j=2:b+1
            r=0;
            for g=i-1:i+1
                for h=j-1:j+1
                    r=r+M(g,h); % Summing pixel values in a window of size 3x3
                end
            end
            r1=r/9;   % Average
            e(i,j)=r1;
        end
     end
     fout=e;
end


