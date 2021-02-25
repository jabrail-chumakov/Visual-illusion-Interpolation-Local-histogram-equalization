%% Task 1.1 - Interpolation
I = imread('input00.png');

Col = 1280;
Row = 720;

rtR = Row/size(I,1);
rtC = Col/size(I,2);

IR = ceil([1:(size(I,1)*rtR)]./(rtR));
IC = ceil([1:(size(I,2)*rtC)]./(rtC));

Temp = I(:,:,1);
Red = Temp(IR,:);
Red = Red(:,IC);

Temp = I(:,:,2);
Green = Temp(IR,:);
Green = Green(:,IC);

Temp = I(:,:,3);
Blue = Temp(IR,:);
Blue = Blue(:,IC);

I2 = zeros([Row,Col,3]);
I2(:,:,1) = Red;
I2(:,:,2) = Green;
I2(:,:,3) = Blue;

I2 = uint8(I2);

subplot(1,2,1),imshow(I);title('Original Image'); axis([0,1440,0,1080]);axis on;
subplot(1,2,2),imshow(I2);title('Image with interpolation');  axis([0,1440,0,1080]);axis on;

%% Task 1.2 - Histogram equalization 
I = imread('secret.png');
I_HE = histeq(I);
fun = @(block_struct)histeq(block_struct.data);
I_LHE = blockproc(I,[40 40],fun);

subplot (2,3,1), imshow(I), title ('Original Image');
subplot (2,3,2), imshow(I_HE), title ('Image with histogram equalization');
subplot (2,3,3), imshow(I_LHE), title ('Image with local histogram equalization');
subplot (2,3,4), imhist(I), title ('Histogram of original Image');
subplot (2,3,5), imhist(I_HE), title ('Histogram of image with histogram equalization');
subplot (2,3,6), imhist(I_LHE), title ('Image with local histogram equalization');
