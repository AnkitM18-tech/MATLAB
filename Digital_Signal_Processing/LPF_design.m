clc; clear all; close all;
N=input('enter order of filter ');
fc=input('enter cut off frequency of the filter  ');
fs=10*fc;
fnc=2*fc/fs;
in=menu('window selection','rectangular','hamming','kaiser');
if(in==1)
    wn=rectwin(N);
elseif(in==2)
    wn=hamming(N);
else
    wn=kaiser(N,0.5);
end
b=fir1(N-1,fnc,wn);
display('coefficient of filter');
display(b);
freqz(b,1,1024);
display('press any key to continue for window function comparision');
w1=rectwin(N);
w2=hamming(N);
w3=kaiser(N,0.5);
wvtool(w1,w2,w3);