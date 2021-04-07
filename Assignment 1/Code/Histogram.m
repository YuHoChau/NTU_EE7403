clear all;
clc
I=imread('I4.jpg');           %读入图像；
J=rgb2gray(I);                  %彩色图转换成灰度图；
figure,imshow(J);
title('Original');
[m n]=size(J);
pro=zeros(1,256);
sum=zeros(1,256);

for i=1:m
    for j=1:n
    pro(J(i,j)+1)=pro(J(i,j)+1)+1;      
    end   
end

sum(1)=pro(1);

for g=2:256
    sum(g)=pro(g)+sum(g-1);
end

newim=zeros(m,n);
sum=sum.*255/(m*n);      %概率分布函数

for i=1:m
    for j=1:n
      newim(i,j) =uint8(sum(J(i,j)+1));
      if newim(i,j)>255
          newim(i,j)=255; %重新分布灰度值
      end        
    end   
end


figure,imshow(uint8(newim) );
title('自己编写的直方图均衡化处理结果');

figure,histeq(J);
title('Histogram Equalization');

figure,
