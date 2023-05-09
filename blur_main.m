img = imread('vandy.png');
%imshow(img);

output = blur(img,2);
imshow(output);


% img = uint8(zeros(5,5));
% img(1,:) = uint8(255);
% img(:,1) = uint8(255);
% img(end,:) = uint8(255);
% img(:,end) = uint8(255);
% 
% output = blur(img,1);