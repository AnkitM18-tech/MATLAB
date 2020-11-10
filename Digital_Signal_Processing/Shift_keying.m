clc
clear all
close all
f=5;
f2=10;
x=[1 1 0 0 1 0 1 0];
nx=size(x,2);
i=1;
while i<nx+1
    t=i:0.001:i+1;
    if x(i)==1
        ask=sin(2*pi*f*t);
        fsk=sin(2*pi*f*t);
        psk=sin(2*pi*f*t);
    else
        ask=0;
        fsk=sin(2*pi*f2*t);
        psk=sin(2*pi*f*t+pi);
    end
    subplot(411)
    plot(x);
    hold on;
    grid on;
    axis([1 10 -1 1]);
    xlabel('time');
    ylabel('amplitude');
    title('Input Signal');
    
    subplot(412)
    plot(t,ask);
    hold on;
    grid on;
    axis([1 10 -1 1]);
    xlabel('time');
    ylabel('amplitude');
    title('Amplitude Shift Key');
    
    subplot(413)
    plot(t,fsk);
    hold on;
    grid on;
    axis([1 10 -1 1]);
    xlabel('time');
    ylabel('amplitude');
    title('Frequency Shift Key');
    
    subplot(414)
    plot(t,psk);
    hold on;
    grid on;
    axis([1 10 -1 1]);
    xlabel('time');
    ylabel('amplitude');
    title('Phase Shift Key');
    i=i+1;
end
