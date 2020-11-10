 clc

  I = imread ('peppers.PNG');
  I2 = rgb2gray(I);
  colormap gray;

  y = imhist(I2);


  %using hist eq. built in fn
  I3= histeq(I2);
  z= imhist(I3);

  %my equalization
  r = size(I2,1);
  c = size(I2,2);
  A= zeros(1,256);

  %counting number of pixels of the image and putting the count in Array A
  for j=1:r
    for x=1:c
        v=I2(j,x);
        A(v+1)=A(v+1)+1;
    end
  end

  %pi=n/size
    for y=1;256
      pi(y)= ((A(y))/(r*c));
    end
 %calculate CI (cumulated pi )
    ci(1)=pi(1);
    for yy=2;256
         ci(yy) = ci(yy-1)+ pi(yy);
    end

    %calculate T=range *Ci
      for b=1;256
        T(b)=ci(b)*255;
       end

    %equilization..replacing each pixel with T value
     for j=1:r
         for x=1:c
             I4(j,x) =T(I2(j,x));

          end
     end