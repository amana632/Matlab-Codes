clc;
clear;
f=500;
t=0:1/f:1;
x1 = 5*sin(2*pi*100*t);
x2 = 5*sin(2*pi*150*t);
x3 = 5*sin(2*pi*170*t);
x4 = 5*sin(2*pi*230*t);
x5 = 5*sin(2*pi*270*t);
y = x1 + x2+ x3+ x4+ x5;
subplot(4,2,1);
plot(t,y),grid on;
title("Synthetic Signal");

% Adding noise %
y1 = 10+ sin(t)+ 2*rand(size(t));
Y1 = y1 + y;
subplot(4,2,2),plot(t,Y1),grid on;
title("Noisy signal");

Y = abs(fft(y,256));
freq = (0:128)'*(f/256);
subplot(4,2,3),plot(freq,Y(1:length(freq))),grid on;
title("The Spectrum");

C = xcorr(y,y);
P = abs(fft(C,256));
subplot(4,2,4),plot(freq,P(1:length(freq))),grid on;
title("Power spectral");
subplot(4,2,5);
spectrogram(y,'yaxis');
title('Spectrogram of Input');
subplot(4,2,6)
spectrogram(Y1,'yaxis');
title("Specrogram of Noisy");

[b,a] = butter (24, 0.26, 'high');
Y = filter(b,a,Y1);
subplot(4,2,7)
spectrogram(Y,'yaxis');
title('Spectrogram of correct audio');
subplot(4,2,8);
plot(t,Y), grid on;
title("Corect Audio Signal");

