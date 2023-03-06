clc;
clear all;
input_image = imread('coloredchips.png');
noisy_image = imnoise(input_image,'salt & pepper',0.01);
red_channel   = noisy_image(:,:,1);
green_channel = noisy_image(:,:,2);
blue_channel  = noisy_image(:,:,3);
red_out     = fgm(red_channel);
green_out   =  fgm(green_channel);
blue_out    = fgm(blue_channel);
output_image = cat(3,red_out,green_out,blue_out);
subplot(1,3,1); %plotting
imshow(input_image);
title('original image');
subplot(1,3,2);
imshow(noisy_image);
title('noisy image');
subplot(1,3,3);
imshow(uint8(output_image));
title('Geometric mean filter output image');
function fout= fgm(A)
    [x,y]=size(A);
    M=zeros(x+2,y+2);
    for i=2:x+1
        for j=2:y+1
            M(i,j)=A(i-1,j-1);
        end
    end
    for i=2:x+1   %padding neighbouring elements
        M(1,i)=M(2,i);
        M(x+2,i)=M(x+1,i);
    end
    for j=2:x+1
        M(j,1)=M(j,2);
        M(j,y+2)=M(j,y+1);
    end
    M(1,1)=M(1,2);   
    M(1,y+2)=M(1,x+1);
    M(x+2,1)=M(x+1,1);
    M(x+2,y+2)=M(x+2,y+1);
    output=zeros(x+2,y+2);
    for i=2:x
        for j=2:y
        r=1;
            for fout=i-1:i+1
                for h=j-1:j+1
                    r=r*M(fout,h); 
                end
            end
            r1=r^(1/9);
            output(i,j)=r1;
        end  
    end
    fout=output;
end