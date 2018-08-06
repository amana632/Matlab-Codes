% Enter the range of non zero values of x
n=input('Enter array n (starting to ending value for the axis of x: ');
N=length(n);
%Finding x
x=[]
fori=n(1):n(length(n))
if(i<0)
a=0;
else
a=(1/2).^i;
end
x=[x a];
subplot(2,1,1)
stem(n,x)
title('Original')
X=DTFT(x,N)
subplot(2,1,2)
ezplot(abs(X))
title('Transform')

%DTFT Function
function[X]=DTFT(x,N)
symsw;
n=0:N-1;
f=x.exp(-1*jw*n);
X=sum(f);
end
