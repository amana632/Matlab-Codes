clc;
close all;
f=(-1:0.01:1);
x=[1 1 1 1];
n=length(x);
w=0;
i=complex(0,1);
for j=0:n-1
    w=w+x(j+1).*exp(-2.*i.*f.*j.*pi);
end
t=0:n-1;
subplot(2,1,1);
plot(f,abs(w));
xlabel('Frequency');
ylabel('Magnitute Spectrum');
title('Magnitute vs Frequency');
subplot(2,1,2);
plot(f,rad2deg(angle(w)));
title('Phase vs Frequency');
