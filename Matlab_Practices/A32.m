clc
clear
close all
alpha=23*10^-6;
L=4.5;
B=2.25;
T1=FtoC(40);
T2=FtoC(92);
deltaT=T2-T1;
deltaL=alpha*L*deltaT;
deltaB=alpha*B*deltaT;
deltaA=((L+deltaL)*(B+deltaB))-(L*B);
fprintf('The change in Area is %d',deltaA);