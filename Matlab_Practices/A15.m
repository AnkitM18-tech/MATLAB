clc
clear
close all
a=input('enter working hour:');
b=input('enter hourly wage;');
if(a>15)
    p=(a*b)+0.5*b*(a-15);
    disp(p);
else
    p=a*b;
    disp(p);
end