clc
clear
close all
syms a t;
u=exp(a*t);
X=diff(u,t)-a*u;
if X==0
    fprintf('It is a solution');
else
    fprintf('It is not a solution');
end