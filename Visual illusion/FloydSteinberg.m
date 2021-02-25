function robt310_project2_dither(input_file_name, output_file_name, part)
    
I = imread('input00.png');
I = im2gray(I);
Z = double(I)./255;

height = size(I(:, :), 1);
width = size(I(:, :), 2);

for y = 1:height - 1
    for x = 2:width - 1
        old_pixel = Z(y, x);
        new_pixel = round(Z(y, x));
        
        Z(y, x) = new_pixel;
        
        error = old_pixel - new_pixel;
        
        Z(y, x + 1) = Z(y, x + 1) + error .* 7 / 16;
        Z(y + 1, x - 1) = Z(y + 1, x - 1) + error .* 3 / 16;
        Z(y + 1, x) = Z(y + 1, x) + error .* 5 / 16;
        Z(y + 1, x + 1) = Z(y + 1, x + 1) + error .* 1 / 16;
        
    end
end

imwrite(I, Z, 0);