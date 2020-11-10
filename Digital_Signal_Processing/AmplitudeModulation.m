clc
clear all
close all
Am=input('enter the message signal amplitude:');
Ac=input('enter the carrier signal amplitude:');
fm=input('enter message frequency:');
fc=input('enter carrier frequency:');
m=input('enter modulation index:');
t=0:0.1:50;
Sm=Am.*sin(2.*pi.*fm.*t);
Sc=Ac.*sin(2.*pi.*fc.*t);
Ms=Sm.*Sc;
subplot(311);
plot(t,Sm);
xlabel('time(ms)');
ylabel('amplitude(volts)');
title('Message Signal');
grid on;
subplot(3,1,2);
plot(t,Sc);
xlabel('time(ms)');
ylabel('amplitude(volts)');
title('Carrier Signal');
grid on;
subplot(3,1,3);
plot(t,Ms);
xlabel('time(ms)');
ylabel('amplitude(volts)');
title('Modulated Signal');
grid on;