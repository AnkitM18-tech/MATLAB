clc;    
close all;  
imtool close all;  
clear;  
workspace; 
fontSize = 20;


folder = fileparts(which('cameraman.tif')); 
baseFileName = 'cameraman.tif';

fullFileName = fullfile(folder, baseFileName);
if ~exist(fullFileName, 'file')

	fullFileName = baseFileName; 
	if ~exist(fullFileName, 'file')
		
		errorMessage = sprintf('Error: %s does not exist.', fullFileName);
		uiwait(warndlg(errorMessage));
		return;
	end
end
grayImage = imread(fullFileName);

[rows, columns,numberOfColorBands] = size(grayImage);

subplot(2, 2, 1);
imshow(grayImage, []);
title('Original Grayscale Image', 'FontSize', fontSize);

set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 1, 0.96]);
set(gcf,'name','Image Analysis Demo','numbertitle','off')


[pixelCount,grayLevels] = imhist(grayImage);
subplot(2, 2, 2);
bar(pixelCount, 'BarWidth', 1, 'EdgeColor', 'none');
grid on;
title('Histogram of Original Gray Scale Image', 'FontSize', fontSize);
xlim([0 grayLevels(end)]); 


localBinaryPatternImage1 = zeros(size(grayImage), 'uint8');
localBinaryPatternImage2 = zeros(size(grayImage), 'uint8');
localBinaryPatternImage3 = zeros(size(grayImage), 'uint8');
localBinaryPatternImage4 = zeros(size(grayImage), 'uint8');
localBinaryPatternImage5 = zeros(size(grayImage), 'uint8');
localBinaryPatternImage6 = zeros(size(grayImage), 'uint8');
localBinaryPatternImage7 = zeros(size(grayImage), 'uint8');
localBinaryPatternImage8 = zeros(size(grayImage), 'uint8');
tic;
for row = 2 : rows - 1
	for col = 2 : columns - 1
		centerPixel = grayImage(row, col);
		pixel7=grayImage(row-1, col-1) > centerPixel;
		pixel6=grayImage(row-1, col) > centerPixel;
		pixel5=grayImage(row-1, col+1) > centerPixel;
		pixel4=grayImage(row, col+1) > centerPixel;
		pixel3=grayImage(row+1, col+1) > centerPixel;
		pixel2=grayImage(row+1, col) > centerPixel;
		pixel1=grayImage(row+1, col-1) > centerPixel;
		pixel0=grayImage(row, col-1) > centerPixel;
		
		
		eightBitNumber = uint8(...
			pixel7 * 2^7 + pixel6 * 2^6 + ...
			pixel5 * 2^5 + pixel4 * 2^4 + ...
			pixel3 * 2^3 + pixel2 * 2^2 + ...
			pixel1 * 2 + pixel0);
		
		localBinaryPatternImage1(row, col) = eightBitNumber;
		
		
		eightBitNumber = uint8(...
			pixel6 * 2^7 + pixel5 * 2^6 + ...
			pixel5 * 2^4 + pixel3 * 2^4 + ...
			pixel3 * 2^2 + pixel1 * 2^2 + ...
			pixel0 * 2 + pixel7);
		
		localBinaryPatternImage2(row, col) = eightBitNumber;
		
		
		eightBitNumber = uint8(...
			pixel5 * 2^7 + pixel4 * 2^6 + ...
			pixel3 * 2^5 + pixel2 * 2^4 + ...
			pixel1 * 2^3 + pixel0 * 2^2 + ...
			pixel7 * 2 + pixel6);
		
		localBinaryPatternImage3(row, col) = eightBitNumber;
		
		
		eightBitNumber = uint8(...
			pixel4 * 2^7 + pixel3 * 2^6 + ...
			pixel2 * 2^5 + pixel1 * 2^4 + ...
			pixel0 * 2^3 + pixel7 * 2^2 + ...
			pixel6 * 2 + pixel5);
	
		localBinaryPatternImage4(row, col) = eightBitNumber;
		
		
		eightBitNumber = uint8(...
			pixel3 * 2^7 + pixel2 * 2^6 + ...
			pixel1 * 2^5 + pixel0 * 2^4 + ...
			pixel7 * 2^3 + pixel6 * 2^2 + ...
			pixel5 * 2 + pixel0);
		
		localBinaryPatternImage5(row, col) = eightBitNumber;
		
		
		eightBitNumber = uint8(...
			pixel2 * 2^7 + pixel1 * 2^6 + ...
			pixel0 * 2^5 + pixel7 * 2^4 + ...
			pixel6 * 2^3 + pixel5 * 2^2 + ...
			pixel4 * 2 + pixel3);
		
		localBinaryPatternImage6(row, col) = eightBitNumber;
		
		
		eightBitNumber = uint8(...
			pixel1 * 2^7 + pixel0 * 2^6 + ...
			pixel7 * 2^5 + pixel6 * 2^4 + ...
			pixel5 * 2^3 + pixel4 * 2^2 + ...
			pixel3 * 2 + pixel2);
		
		localBinaryPatternImage7(row, col) = eightBitNumber;
		
	
		eightBitNumber = uint8(...
			pixel0 * 2^7 + pixel7 * 2^6 + ...
			pixel6 * 2^5 + pixel5 * 2^4 + ...
			pixel4 * 2^3 + pixel3 * 2^2 + ...
			pixel2 * 2 + pixel1);
		
		localBinaryPatternImage8(row, col) = eightBitNumber;
		
	end
end
toc;

localBinaryPatternImage1(1, :) = localBinaryPatternImage1(2, :);
localBinaryPatternImage1(end, :) = localBinaryPatternImage1(end-1, :);
localBinaryPatternImage1(:, 1) = localBinaryPatternImage1(:, 2);
localBinaryPatternImage1(:, end) = localBinaryPatternImage1(:, end-1);

subplot(2,2,3);
imshow(localBinaryPatternImage1, []);
title('Local Binary Pattern', 'FontSize', fontSize);
hp = impixelinfo();
hp.Units = 'normalized';
hp.Position = [0.2, 0.5, .5, .03];

subplot(2,2,4);
[pixelCounts, GLs] = imhist(uint8(localBinaryPatternImage1(2:end-1, 2:end-1)));
bar(GLs, pixelCounts, 'BarWidth', 1, 'EdgeColor', 'none');
grid on;
title('Histogram of Local Binary Pattern', 'FontSize', fontSize);


LBPAverageImage = (double(localBinaryPatternImage1) + double(localBinaryPatternImage2) + double(localBinaryPatternImage3) + double(localBinaryPatternImage4) + double(localBinaryPatternImage5) + double(localBinaryPatternImage6) + double(localBinaryPatternImage7) + double(localBinaryPatternImage8)) / 8;
figure;
subplot(3, 3, 1);
imshow(localBinaryPatternImage1);
title('LSB at upper left', 'FontSize', fontSize);

subplot(3, 3, 2);
imshow(localBinaryPatternImage2);
title('LSB at upper center', 'FontSize', fontSize);

subplot(3, 3, 3);
imshow(localBinaryPatternImage3);
title('LSB at upper right', 'FontSize', fontSize);

subplot(3, 3, 6);
imshow(localBinaryPatternImage4);
title('LSB at center right', 'FontSize', fontSize);

subplot(3, 3, 9);
imshow(localBinaryPatternImage5);
title('LSB at lower right', 'FontSize', fontSize);

subplot(3, 3, 8);
imshow(localBinaryPatternImage6);
title('LSB at lower center', 'FontSize', fontSize);

subplot(3, 3, 7);
imshow(localBinaryPatternImage7);
title('LSB at lower left', 'FontSize', fontSize);

subplot(3, 3, 4);
imshow(localBinaryPatternImage8);
title('LSB at center left', 'FontSize', fontSize);

subplot(3, 3, 5);
imshow(LBPAverageImage, []);
title('Average of the 8', 'FontSize', fontSize, 'Color', 'r', 'FontWeight', 'bold');


set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 1, 0.96]);
set(gcf,'name','Image Analysis Demo','numbertitle','off')
impixelinfo;

figure;
for gl = 0 : 255
	binaryImage = localBinaryPatternImage1 == gl;
	imshow(binaryImage);
	caption = sprintf('LBP Image.  Pixels with Gray Level = %d', gl);
	title(caption, 'FontSize', 12);
	drawnow;
	pause(0.04);
end
