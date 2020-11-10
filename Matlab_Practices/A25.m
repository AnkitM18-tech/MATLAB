clc
clear
close all
x=rand(1,1000);
sum1=0;
for i=1:1:1000
    sum1=sum1+x(i);
end
disp(sum1);