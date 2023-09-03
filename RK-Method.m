%Runge kutta
clc;
 f=@(x,y)3.*x+(y./2);
 x=0;
 y=1;
 h=0.1;
 xn=0.5;
 n=(xn-x)/h;
 for i=1:n
     fprintf("Iteration number =%f\n",i)
     disp("   x     y ")
     z=[x y];
     disp(z)
     k1=h*f(x,y)
     k2=h*f(x+h/2,y+k1/2)
     k3=h*f(x+h/2,y+k2/2)
     k4=h*f(x+h,y+k3)
     y=y+(k1+2*k2+2*k3+k4)/6
     x=x+h;
 end
