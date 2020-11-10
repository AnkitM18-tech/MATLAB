clc
clear
r(1)=input('enter roll no1');
r(2)=input('enter roll no2');
r(3)=input('enter roll no3');
r(4)=input('enter roll no4');
m(1)=input('enter marks1');
m(2)=input('enter marks2');
m(3)=input('enter marks3');
m(4)=input('enter marks4');
xlswrite('profile.xls',[r;m]);
a='profile.xls';
num=xlsread(a);
