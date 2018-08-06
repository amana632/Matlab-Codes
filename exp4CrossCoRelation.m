x1= [1 2 3 4];
x2= [2 -4 5 7];
m= length(x1);
n= length(x2);
x3=flip(x1);
for k=1:n+m-1
   y(k)=0;
   for i=1:m
       for j=1:n
           if (k==(i+j-1))
                        y(k)= y(k)+x3(i)*x2(j);
           end
       end
   end
end
subplot(2,1,1);
stem(y);
xlabel('time(sec)'),ylabel('amplitude');
y1= xcorr(x1, x2);
subplot(2,1,2);
stem(y1);
xlabel('time(sec)'),ylabel('amplitude');