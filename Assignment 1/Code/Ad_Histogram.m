I = rgb2gray(imread('I4.jpg'));
figure;
imshow(I);

I1 = adapthisteq(I);
figure;
imshow(I1);

I2 = adapthisteq(I,'NumTiles',[8 8]);
figure;
imshow(I2);

I3 = adapthisteq(I,'NumTiles',[50 50],'ClipLimit',0.5);
figure;
imshow(I3);

I4 = adapthisteq(I,'NumTiles',[50 50],'ClipLimit',...
0.5,'NBins',400);
figure;
imshow(I4);
