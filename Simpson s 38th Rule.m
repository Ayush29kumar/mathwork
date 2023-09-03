clc;
f=@(x)(sqrt(sin(x)));
a = input('enter the lower limit a:');
b = input('enter the upper limit b:');
n = input('enter the number sub interval n:');
h=(b-a)/n;
if rem(n,2)==1
    fprintf('\n enter the valid n!!');
    n = input('\n enter the n as even number:');
end
K=1:1:n-1;
s=f(a+K.*h);
out = (3*h/8).*(f(a)+f(b)+3.*(s(1)+s(2)+s(4)+s(5))+2.*(s(3)));
fprintf('the value of integration is %.4f',out);