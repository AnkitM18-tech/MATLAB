clc
clear
a={'enter name 1','enter name 2','enter name 3'};
t1='names';
x=inputdlg(a,t1);
b={'working hour 1','working hour 2','working hour 3'};
t2='working hours';
y=inputdlg(b,t2);
c={'h wage 1','h wage 2','h wage 3'};
t3='hourly wages';
z=inputdlg(c,t3);
h1=str2num(y{1});
h2=str2num(y{2});
h3=str2num(y{3});
w1=str2num(z{1});
w2=str2num(z{2});
w3=str2num(z{3});
h=[h1 h2 h3];
w=[w1 w2 w3];
p=h.*w;
[d n]=max(p);
disp(x{n});
