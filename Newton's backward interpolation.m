clc;
clear all;
x=[8,10,12,14,16,18];
y=[10,19,32.5,54,89.5,154];
n=length(x);
X=17;
h=x(2)-x(1);
F=zeros(n,n);
F(:,1)=y;
for j =2:n
    for i=j:n
        F(i,j)=F(i,j-1)-F(i-1,j-1);
    end
end
F
p=(X-x(n))/h;
d=F(6,1)+p*F(6,2)+p*(p+1)*F(6,3)/factorial(2)+p*(p+1)*(p+2)*F(6,4)/factorial(3)+p*(p+1)*(p+2)*(p+3)*F(6,5)/factorial(4)+p*(p+1)*(p+2)*(p+3)*(p+4)*F(6,6)/factorial(5);
fprintf('f(%0.4f)=%0.4f\n',X,d);


