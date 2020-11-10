clear
close all
clc
%-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

% example1:
f = [151    79    17
     121   101    10
     139    88   108];
[LBP] = LocalBinaryPattern (f);
figure
subplot(121),imshow(f, []), title('orginal mat')
subplot(122),imshow(LBP, []), title('LBP mat')

% example2:
cameraman = imread('cameraman.tif');
[cameraman_LBP] = LocalBinaryPattern (cameraman);
figure
subplot(121),imshow(cameraman, []), title('cameraman')
subplot(122),imshow(cameraman_LBP, []), title('LBP mat')
