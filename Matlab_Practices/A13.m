clc
clear
close all
r(1)=input('roll 1');
r(2)=input('roll 2');
r(3)=input('roll 3');
m(1)=input('mark 1');
m(2)=input('mark 2');
m(3)=input('mark 3');
avg=mean(m);
x=find(m>=avg);
disp(r(x));