clear all
clc
f=@(x,y)log(x+y);
x0=1;
y0=2;
h=0.1;
xn=1.4;
n=(xn-x0)/h;
for i=1:n+1
    fprintf("Iteration number=% f\n",i)
    y1E=y0+h*f(x0,y0)
    for j=1:3
        y1=y0+(h/2)*(f(x0,y0)+f(x0+h,y1E))
        y1E=y1;
        j=j+1;
    end
    y0=y1;
    x0=x0+h;
    n=n+1;
end
x=[x0(:)];
y=[y0(:)];
disp(" x  y")
z=[x y];
disp(z)