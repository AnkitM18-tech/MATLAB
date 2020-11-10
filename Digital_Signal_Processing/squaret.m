clc
close all
clear all
n1=input('enter lower limit:');
n2=input('enter upper limit:');
t=linspace(n1,n2,30);
y=t.*t;
subplot(2,1,1);
plot(t,y);
xlabel('time (Ankit Kumar Mohanty,1702070017)');
ylabel('amplitude');
title('Continuous');
subplot(2,1,2);
stem(t,y);
xlabel('No of samples(n) (Ankit Kumar Mohanty,1702070017)');
ylabel('amplitude');
title('Discrete');