clear all;
close all;
clc;
t = 1:256;
x = 15*sin(2*pi*t/128);
subplot(3,2,1);
plot(t,x);

subplot(3,2,2); 
y = 15*cos(2*pi*t/128);
plot(t,y)

%subplot(2,2,[3,4]);
%plot(t,x,'b',t,y,'g');
%title('Subplot 3 and 4: Both')

subplot(3,2,3); 
t = (-1:0.01:1);
impulse = t==0;
unitstep = t>=0;
%negunit = t<=0;
ramp = t.*unitstep;
%negramp = -t.*negunit;
%quad = t.^2.*unitstep;
%plot(t,[impulse unitstep ramp negramp quad])
X = -2:0.5:10;
Y = exp(X/2);
plot(t,impulse)

subplot(3,2,4)
%stem(t,unitstep)
plot(t,unitstep);
subplot(3,2,5)
plot(t,ramp)
subplot(3,2,6)
plot(X,Y)

%t1 = (-1:0.01:1)';
%subplot(2,1,2); 
%sqwave = 0.81*square(4*pi*t1);
%plot(t1,sqwave);
