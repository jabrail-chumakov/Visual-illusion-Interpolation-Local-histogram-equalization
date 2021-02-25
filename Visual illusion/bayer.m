
corn_gray = imread('lena.bmp',3);
imshow(corn_gray)
corn_bw = dither(corn_gray);
imshow(corn_bw)