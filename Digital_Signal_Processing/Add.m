clc
close all
clear all
n1=input('Enter lower limit:');
n2=input('Enter upper limit:');
t=n1:n2;
ramp=t.*(t>=0);
sq=t.*t;
res=ramp+sq;
subplot(2,1,1);
plot(t,res,'r');
grid on;
title('Continuous');
xlabel('time (Ankit Kumar Mohanty,1702070017)');
ylabel('amplitude ');
subplot(2,1,2);
stem(t,res,'b');
grid on;
title('Discrete');
xlabel('No of samples(n) (Ankit Kumar Mohanty,1702070017)');
ylabel('amplitude');
