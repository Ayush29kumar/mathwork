clear all;
clc;
syms x y a
f=sqrt(a^2-x^2-y^2);
V=int(int(f,y,0,sqrt(a^2-x^2)),x,0,a);
fprintf('the required volume is given by')
V