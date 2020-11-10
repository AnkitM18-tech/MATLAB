close all;
clear all;
clc;
x=input('Enter The Sequence 1:   ');
h=input('Enter The Sequence 2:   ');
X=[x,zeros(1,length(h))]; 
H=[h,zeros(1,length(x))]; 
for i=1:length(x)+length(h)-1
Y(i)=0;
for j=1:length(x)    
if(i-j+1>0)
Y(i)=Y(i)+X(j)*H(i-j+1);
else
end
end
end
disp(Y)
subplot(2,1,1);
stem(Y);
ylabel('Y[n]');
xlabel('No of Samples(n) (Raj Pruthiv Raj,1803070001)');
title('Convolution of Two Signals----Discrete');
subplot(2,1,2);
plot(Y);
ylabel('Y[t]');
xlabel('time  (Raj Pruthiv Raj,1803070001)');
title('Convolution of Two Signals-----Continuous');







