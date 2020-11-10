clc
close all
clear all
n1=input('Enter lower limit:');
n2=input('Enter upper limit:');
n=n1:n2;
ramp=n.*(n>=0);
subplot(2,1,1);
plot(n,ramp,'r');
title('Continuous Analog');
xlabel('time (Ankit Kumar Mohanty,1702070017)');
ylabel('amplitude');
subplot(2,1,2);
stem(n,ramp,'b');
title('Discrete Analog');
xlabel('No of samples(n)(Ankit Kumar Mohanty,1702070017)');
ylabel('amplitude ');