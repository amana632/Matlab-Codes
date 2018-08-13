x = input('enter a sequence= ');
h = input('enter another sequence= ');
n1=length(x);
n2 = length(h);
n = max(n1,n2);
a=1:n;
x = [x,zeros(1,n-n1)];
h = [h,zeros(1,n-n2)];
y = zeros(1,n);
for i =0:n-1
    for j = 0:n-1
        k = mod((i-j),n);
        y(i+1) = y(i+1) + x(j+1)*h(k+1);
end
end
subplot(4,1,1)
stem(x,a);
title('Input 1'),xlabel('tim(sec)'),ylabel('Amplitude')
subplot(4,1,2)
stem(a,y);
title('Input 2'),xlabel('tim(sec)'),ylabel('Amplitude')
subplot(4,1,3)
stem(a,y);
title('Output Without ccnov Function'),xlabel('tim(sec)'),ylabel('Response')
subplot(4,1,4)
c = cconv(x,h,n);
stem(a,c);
title('Output using cconv Function'),xlabel('tim(sec)'),ylabel('Response')