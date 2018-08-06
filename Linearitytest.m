clc; close all; clear all;
n=0:40;
a=2;
b=-1;
x1=sin(2*pi*.6*n);
x2=sin(2*pi*.6*n);
y1=a*x1+b*x2;
h=[1,3,6,8];
subplot(4,2,1);
stem(x1);
subplot(4,2,2);
stem(x2);
y11=conv(x1,h);
y12=conv(x2,h);
subplot(4,2,3);
stem(y11);
subplot(4,2,4);
stem(y12);
 
yf=y11+y12;
xf=a*y11+b*y12;
title('My Title')
subplot(4,2,5);
stem(yf);

subplot(4,2,6);
yff=conv(y1,h);
stem(yff);

if xf == yff
fprintf('Linear system\n' );
else
fprintf('Non linear\n');
end