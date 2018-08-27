clc;
clear all;
close all;

x=input('Enter first sequence');
h=input('Enter second sequence');

lengthx=length(x);
lengthy=length(h);

N=lengthx+lengthy-1;
linconv=conv(h,x);

for i=1:lengthx
    zvar(i) = x(lengthx-i+1);
end

zvar=[zeros(1,lengthy),zvar];

for i = 1:N
    y(i) = 0;
    a = zvar';
    a = circshift(a,1);
    zvar = a';
    
    for j=1:lengthy
        y(i)= y(i) + h(j) * zvar(j);
    end
end

X = linspace(0,length(y)-1,length(y));
subplot(2,1,1)
stem(X,linconv)
title(" Using Linconv")
subplot(2,1,2);
stem(X,y)
title("Using FIR ")