
function [J]= segment(img)
img2=double(img);
 img2(:,:,2) = 2*img2(:,:,2);
 img2= uint8(img2);
 %imshow(img2); title('increased green channel');
grey = rgb2gray(img2);
%imshow(grey); title('greylevel');
stretch = imadjust(grey,stretchlim(grey));
%imshow(stretch); title('imadjust');
%imshow(stretch);

% % Apply a Median Filter to remove the noise
outMed = medfilt2(stretch,[3 3]);
 %eq = histeq(outMed);
%figure, imshow(outMed), title('Median Filter');
%figure, imshow(eq), title('equalized');


level = graythresh(outMed);
BW = im2bw(outMed,level);
%imshow(BW), title('Binary Image');
se = strel('disk', 2);
er = imerode(BW, se);
%imshow(er); title('Eroded');
se = strel('disk', 5);
 J = imclose(er,se);
 %figure, imshow(J);
 %imshow(J); title('closing');
end
 
 
 

