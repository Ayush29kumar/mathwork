clc;
clear all;
f=@(x)(sqrt(sin(x)+(cos(x))));
a=input('enter the lower limit a:');
b=input('enter the lower limit b:');
n=input('enter the number of sub intervals n:');
h=(b-a)/n;
if rem(n,2)==1
    fprintf('\n please enter valid number n!!');
    n=input('\n enter n as even number:');
end
K=1:1:n-1;
s=f(a+K.*h);
out=(h/3).*(f(a)+f(b)+4.*(s(1)+s(3)+s(5))+2.*(s(2)+s(4)));
fprintf('the value of the integration is%.4f',out)
