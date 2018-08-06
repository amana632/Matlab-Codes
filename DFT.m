clc
clear all;
close all;
x=[1 2 3 4];
l=length(x);
N=input('No. of points=');
v=[x,zeros(1,(N-1))];
l1=length(v);
j=sqrt(-1);
y=zeros(1,l1);
for k=0:(l1-1)
for i=0:(l1-1)
    y(k+1)=y(k+1)+v(i+1).*(exp(-j*2*pi*k*i/N));
end
end
m=length(v)/2;
xm=abs(y);
xw=angle(y);
t=1:1:l1
subplot(3,1,1)
stem(t,v)
ylabel('Amplitude of original signal');
xlabel('No. of samples-->');
title('Sequence x(n)');
subplot(3,1,2)
stem(t,xm)
ylabel('Amplitude response of DFT');
xlabel('No. of samples-->');
title('Magnitude spectrum')
subplot(3,1,3)
stem(t,xw)
ylabel('Phase response in radians');
xlabel('No. of samples-->');
title('Phase Spectrum')


