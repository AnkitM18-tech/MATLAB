clc;
clear all;
close all;
x=input('enter input sequence:');
h=input('enter impulse sequence:');
acc=xcorr(x,x);
psd=abs(fft(acc));
subplot(311);
stem(x);
title('Input Sequence');
xlabel('no of samples');
ylabel('amplitude');
grid on;
subplot(312);
stem(h);
title('Impulse Sequence');
xlabel('no of samples');
ylabel('amplitude');
grid on;
subplot(313);
stem(psd);
title('Power Spectral Density');
xlabel('no of samples');
ylabel('amplitude');
grid on;
psd