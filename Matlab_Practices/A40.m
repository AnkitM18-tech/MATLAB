clc
clear
close all
syms x c1 c2;
int(-(1+x),x)+c1;
int(ans,x)+c2;
u=ans;
disp(u);
s=solve(subs(u,x,0)-2,subs(u,x,1),c1,c2);
u=subs(u,{c1,c2},{s.c1,s.c2});
disp(u);