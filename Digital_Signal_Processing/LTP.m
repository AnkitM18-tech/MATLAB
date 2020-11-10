function [patchHist ,ltpIm] = LTP(im, patchSideNum, thres, plotOpt)


if nargin<1, selfdemo; return; end
if nargin<2, patchSideNum=8; end	
if nargin<3, thres=4; end
if nargin<4, plotOpt=0; end

[h, w, dim]=size(im);
if dim>=3, im=rgb2gray(im); end

weight=2.^[0, 7, 6, 1, -inf, 5, 2, 3, 4];


I2=zeros(h+2, w+2);
I2(2:h+1,2:w+1)=im;

blk=im2col(I2, [3 3], 'sliding');		
for i=1:size((blk),2)
	pos=blk(:, i)-blk(5, i)+thres;
    neg=blk(:, i)-blk(5, i)-thres;	
    pos = pos ./ abs(pos);
    neg = neg ./ abs(neg);
    tmp = pos .* neg;
    blk(:, i) = pos .* (tmp == 1);
end
colSumPos=weight*double(blk>0);
colSumNeg=weight*double(blk<0);
ltpIm(:,:,1)=double(reshape(colSumPos, h, w));
ltpIm(:,:,2)=double(reshape(colSumNeg, h, w));


subH=floor(h/patchSideNum);
subW=floor(w/patchSideNum);

ltpIm=ltpIm(1:subH*patchSideNum, 1:subW*patchSideNum, :);
lbpPatchPos=im2col(ltpIm(:,:,1), [subH, subW], 'distinct');
lbpPatchNeg=im2col(ltpIm(:,:,2), [subH, subW], 'distinct');
patchHist=zeros(256*2, patchSideNum*patchSideNum);   
for i=1:size(lbpPatchPos,2)
	tmp1=histc(lbpPatchPos(:,i), 0:255);
    MAX1 = max(tmp1);
	tmp2=histc(lbpPatchNeg(:,i), 0:255);
    MAX2 = max(tmp2);
    patchHist(:,i) = [tmp1./MAX1; tmp2./MAX2];    
end
patchHist=patchHist(:);

if plotOpt
	subplot(1,3,1); imshow(im);
    xlabel('Original Img')
	subplot(1,3,2); imshow(ltpIm(:,:,1), []);
    xlabel('LTP Positive')
    subplot(1,3,3); imshow(ltpIm(:,:,2), []); 
    xlabel('LTP Negative')
end

function selfdemo
mObj=mFileParse(which(mfilename));
strEval(mObj.example);