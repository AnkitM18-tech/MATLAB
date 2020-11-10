clc
clear
close all
l=4.5;
b=2.25;
dT=FtoC(92)-FtoC(40);
[dl, db]=area(l,b,dT);
dA=((l+dl)*(b+db)-(l*b));
disp(dA);