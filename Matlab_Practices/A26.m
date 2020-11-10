clc
clear
close all
sum1=0;
n=input('enter the limit:');
for k=1:1:n
    sum1=sum1+(((-1).^k).*k)./(2.^k);
end
disp(sum1);