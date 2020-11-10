clc;
clear all;
rp = input('Enter the passband ripple = ');
rs = input('Enter the stopband ripple = ');
fp = input('Enter the passband frequency = ');
fs = input('Enter the stopband frequency = ');
f = input('Enter the sampling frequency = ');
wp = 2*fp/f;
ws = 2*fs/f;
num = -20*log10(sqrt(rp*rs))-13;
dem = 14.6*(fs-fp)/f;
n = ceil(num/dem);
n1 = n+1;
if (rem(n,2)~=0)
n1 = n;
n = n-1;
end
y3 = hanning(n1);
% low-pass filter
b3 = fir1(n,wp,y3);
[h3,o3] = freqz(b3,1,256);
m3 = 20*log10(abs(h3));
subplot(3,1,3);
plot(o3/pi,m3);
title('Magnitude Response of LPF using Hanning Window');
ylabel('Gain in dB ---->');
xlabel('Normalised Frequency ---->(Ankit Kumar Mohanty,1702070017)');
grid on;
y2=hamming(n1);

% low-pass filter
b2=fir1(n,wp,y2);
[h2,o2]=freqz(b2,1,256);
m2=20*log10(abs(h2));
subplot(312);
plot(o2/pi,m2);
title('FIR Filter Response using Hamming window');ylabel('Gain in dB');xlabel('Normalised frequency');grid on;

y1=boxcar(n1);
%Lowpass filter
b1=fir1(n,wp,y1);
[h1,o1]=freqz(b1,1,256);
m1=20*log10(abs(h1));
subplot(3,1,1);
plot(o1/pi,m1);
ylabel('gain in db---->');
xlabel('Normalised frequency---->');
title('FIR filter using Rectangular window of LPF ----');
grid on;