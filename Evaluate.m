clear all;
clc;
syms x y
f=  x*exp(-x^2/y);
fprintf('the value of the given double integral is');
int(int(f,x,y,inf),y,0,inf)

