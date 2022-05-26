clc;  % Clear command window.
clear;  % Delete all variables.
close all;  % Close all figure windows except those created by imtool.
imtool close all;  % Close all figure windows created by imtool.
workspace;  % Make sure the workspace panel is showing.
fontSize = 15;

%--------------------------------1)Alstonia_Scholaris----------------------------------------------------
imagefiles = dir('D:\term 7\Digital Image\materials\_Output\Alstonia_Scholaris_(P2)\*.JPG');
groundfiles= dir('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Alstonia_Scholaris_(P2)\*.JPG');
nfiles = length(imagefiles);    % Number of files found
accuracy=0;
accuracy2=0;
accuracy3=0;
accuracy4=0;
accuracy5=0;
accuracy6=0;
accuracy7=0;
accuracy8=0;
accuracy9=0;
accuracy10=0;
for f=1:nfiles
   currentfilename = imagefiles(f).name;
   currentimage = imread(strcat('D:\term 7\Digital Image\materials\_Output\Alstonia_Scholaris_(P2)\',currentfilename));
   newimg= segment(currentimage);
   groundfilename = groundfiles(f).name;
   groundtruth = imread(strcat('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Alstonia_Scholaris_(P2)\',groundfilename));
   level = graythresh(groundtruth);
   groundtruth = imbinarize(groundtruth,level);
   %newf=[];
   imwrite(newimg,strcat('D:\term 7\Digital Image\materials\result\Alstonia_Scholaris_(P2)\',currentfilename));
   similarity = jaccard(newimg,groundtruth);
   accuracy= accuracy+ similarity;
end
accuracy= accuracy/nfiles;
%--------------------------------2)Arjun--------------------------------
imagefiles = dir('D:\term 7\Digital Image\materials\_Output\Arjun_(P1)\*.JPG');
groundfiles= dir('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Arjun_(P1)\*.JPG');
nfiles = length(imagefiles);  
for f=1:nfiles
   currentfilename = imagefiles(f).name;
   currentimage = imread(strcat('D:\term 7\Digital Image\materials\_Output\Arjun_(P1)\',currentfilename));
   newimg= segment(currentimage);
   groundfilename = groundfiles(f).name;
   groundtruth = imread(strcat('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Arjun_(P1)\',groundfilename));
    level = graythresh(groundtruth);
   groundtruth = imbinarize(groundtruth,level);
   imwrite(newimg,strcat('D:\term 7\Digital Image\materials\result\Arjun_(P1)\',currentfilename));
   similarity = jaccard(newimg,groundtruth);
   accuracy2= accuracy2+ similarity;
end
accuracy2= accuracy2/nfiles;
%--------------------------------3)Basil_(P8)--------------------------------
imagefiles = dir('D:\term 7\Digital Image\materials\_Output\Basil_(P8)\*.JPG');
groundfiles= dir('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Basil_(P8)\*.JPG');
nfiles = length(imagefiles);    
for f=1:nfiles
   currentfilename = imagefiles(f).name;
   currentimage = imread(strcat('D:\term 7\Digital Image\materials\_Output\Basil_(P8)\',currentfilename));
   newimg= segment(currentimage);
   groundfilename = groundfiles(f).name;
   groundtruth = imread(strcat('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Basil_(P8)\',groundfilename));
   level = graythresh(groundtruth);
   groundtruth = imbinarize(groundtruth,level);
   imwrite(newimg,strcat('D:\term 7\Digital Image\materials\result\Basil_(P8)\',currentfilename));
   similarity = jaccard(newimg,groundtruth);
   accuracy3= accuracy3+ similarity;
end
accuracy3= accuracy3/nfiles;
% %--------------------------------4)Chinar_(P11)--------------------------------
imagefiles = dir('D:\term 7\Digital Image\materials\_Output\Chinar_(P11)\*.JPG');
groundfiles= dir('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Chinar_(P11)\*.JPG');
nfiles = length(imagefiles);   
for f=1:nfiles
   currentfilename = imagefiles(f).name;
   currentimage = imread(strcat('D:\term 7\Digital Image\materials\_Output\Chinar_(P11)\',currentfilename));
   newimg= segment(currentimage);
   groundfilename = groundfiles(f).name;
   groundtruth = imread(strcat('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Chinar_(P11)\',groundfilename));
   level = graythresh(groundtruth);
   groundtruth = imbinarize(groundtruth,level);
   imwrite(newimg,strcat('D:\term 7\Digital Image\materials\result\Chinar_(P11)\',currentfilename));
   similarity = jaccard(newimg,groundtruth);
    accuracy4= accuracy4+ similarity;
end
accuracy4= accuracy4/nfiles;
% %--------------------------------5)Jamun_(P5)--------------------------------
imagefiles = dir('D:\term 7\Digital Image\materials\_Output\Jamun_(P5)\*.JPG');
groundfiles= dir('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Jamun_(P5)\*.JPG');
nfiles = length(imagefiles);   
for f=1:nfiles
   currentfilename = imagefiles(f).name;
   currentimage = imread(strcat('D:\term 7\Digital Image\materials\_Output\Jamun_(P5)\',currentfilename));
   newimg= segment(currentimage);
   groundfilename = groundfiles(f).name;
   groundtruth = imread(strcat('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Jamun_(P5)\',groundfilename));
     level = graythresh(groundtruth);
   groundtruth = imbinarize(groundtruth,level);
   imwrite(newimg,strcat('D:\term 7\Digital Image\materials\result\Jamun_(P5)\',currentfilename));
   similarity = jaccard(newimg,groundtruth);
    accuracy5= accuracy5+ similarity;
end

accuracy5= accuracy5/nfiles;
%--------------------------------6)Jatropha_(P6)--------------------------------
imagefiles = dir('D:\term 7\Digital Image\materials\_Output\Jatropha_(P6)\*.JPG');
groundfiles= dir('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Jatropha_(P6)\*.JPG');
nfiles = length(imagefiles);    
for f=1:nfiles
   currentfilename = imagefiles(f).name;
   currentimage = imread(strcat('D:\term 7\Digital Image\materials\_Output\Jatropha_(P6)\',currentfilename));
   newimg= segment(currentimage);
   groundfilename = groundfiles(f).name;
   groundtruth = imread(strcat('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Jatropha_(P6)\',groundfilename));
   level = graythresh(groundtruth);
   groundtruth = imbinarize(groundtruth,level);
   imwrite(newimg,strcat('D:\term 7\Digital Image\materials\result\Jatropha_(P6)\',currentfilename));
   similarity = jaccard(newimg,groundtruth);
   accuracy6= accuracy6+ similarity;
end
accuracy6= accuracy6/nfiles;
% %--------------------------------7)Lemon_(P10)--------------------------------
imagefiles = dir('D:\term 7\Digital Image\materials\_Output\Lemon_(P10)\*.JPG');
groundfiles= dir('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Lemon_(P10)\*.JPG');
nfiles = length(imagefiles);    
for f=1:nfiles
   currentfilename = imagefiles(f).name;
   currentimage = imread(strcat('D:\term 7\Digital Image\materials\_Output\Lemon_(P10)\',currentfilename));
   newimg= segment(currentimage);
   groundfilename = groundfiles(f).name;
   groundtruth = imread(strcat('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Lemon_(P10)\',groundfilename));
    level = graythresh(groundtruth);
   groundtruth = imbinarize(groundtruth,level); 
    imwrite(newimg,strcat('D:\term 7\Digital Image\materials\result\Lemon_(P10)\',currentfilename));
     similarity = jaccard(newimg,groundtruth);
    accuracy7= accuracy7+ similarity;
end
accuracy7= accuracy7/nfiles;
% %--------------------------------8)Mango_(P0)--------------------------------
imagefiles = dir('D:\term 7\Digital Image\materials\_Output\Mango_(P0)\*.JPG');
groundfiles= dir('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Mango_(P0)\*.JPG');
nfiles = length(imagefiles);    
for f=1:nfiles
   currentfilename = imagefiles(f).name;
   currentimage = imread(strcat('D:\term 7\Digital Image\materials\_Output\Mango_(P0)\',currentfilename));
   newimg= segment(currentimage);
   groundfilename = groundfiles(f).name;
   groundtruth = imread(strcat('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Mango_(P0)\',groundfilename));
    level = graythresh(groundtruth);
   groundtruth = imbinarize(groundtruth,level);
   imwrite(newimg,strcat('D:\term 7\Digital Image\materials\result\Mango_(P0)\',currentfilename));
    similarity = jaccard(newimg,groundtruth); 
   accuracy8= accuracy8+ similarity;
end
accuracy8= accuracy8/nfiles;
% %--------------------------------9)Pomegranate_(P9)--------------------------------
imagefiles = dir('D:\term 7\Digital Image\materials\_Output\Pomegranate_(P9)\*.JPG');
groundfiles= dir('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Pomegranate_(P9)\*.JPG');
nfiles = length(imagefiles);    
for f=1:nfiles
   currentfilename = imagefiles(f).name;
   currentimage = imread(strcat('D:\term 7\Digital Image\materials\_Output\Pomegranate_(P9)\',currentfilename));
   newimg= segment(currentimage);
   groundfilename = groundfiles(f).name;
   groundtruth = imread(strcat('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Pomegranate_(P9)\',groundfilename));
    level = graythresh(groundtruth);
   groundtruth = imbinarize(groundtruth,level);
    imwrite(newimg,strcat('D:\term 7\Digital Image\materials\result\Pomegranate_(P9)\',currentfilename));
    similarity = jaccard(newimg,groundtruth); 
    accuracy9= accuracy9+ similarity;
end
accuracy9= accuracy9/nfiles;
% %--------------------------------10)Pongamia_Pinnata_(P7)--------------------------------
imagefiles = dir('D:\term 7\Digital Image\materials\_Output\Pongamia_Pinnata_(P7)\*.JPG');
groundfiles= dir('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Pongamia_Pinnata_(P7)\*.JPG');
nfiles = length(imagefiles);    
for f=1:nfiles
   currentfilename = imagefiles(f).name;
   currentimage = imread(strcat('D:\term 7\Digital Image\materials\_Output\Pongamia_Pinnata_(P7)\',currentfilename));
   newimg= segment(currentimage);
   groundfilename = groundfiles(f).name;
   groundtruth = imread(strcat('D:\term 7\Digital Image\materials\_Ground_Truth\_GroundTruth\Pongamia_Pinnata_(P7)\',groundfilename));
    level = graythresh(groundtruth);
   groundtruth = imbinarize(groundtruth,level);
   imwrite(newimg,strcat('D:\term 7\Digital Image\materials\result\Pongamia_Pinnata_(P7)\',currentfilename));
   similarity = jaccard(newimg,groundtruth);  
   accuracy10= accuracy10+ similarity;
end
accuracy10= accuracy10/nfiles;

total=accuracy + accuracy2+ accuracy3+ accuracy4 + accuracy5 + accuracy6 + accuracy7 + accuracy8 + accuracy9 + accuracy10;
total= total/10*100;
disp(total);

