clc
clear
close all
A=[5 4 -2 6;3 6 6 4.5;6 12 -2 16;4 -2 2 -9];
B=[4;13.5;20;6];
C=inv(A)*B;%slower process and less accurate
C=A\B;
disp(C);