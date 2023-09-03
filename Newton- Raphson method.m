f=@(x)(cos(x));
fd=@(x)(-sin(x));
x0=input('Enter initial approximation :');
n=input('Enter no of iteration,n: ');
tol=input('Enter  tolerance,tol :');
i=1;
while i<=n
    d=f(x0)/fd(x0);
    x0=x0-d
    if  abs(d)<tol
        fprintf('\n Approximate solution xn= %0.4f \n\n',x0)
        break;
    else
        i=i+1;
    end
end