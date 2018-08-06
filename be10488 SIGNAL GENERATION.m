a= input ('enter time limit');
x= -a  : 0.01 : a ;
y= zeros (1, length(x));
z= zeros (1, lenth(x));
count =1;
subplot (3,2,1);
while (count <=length(x))
    if x(count)>0
        y(count)=1
    end
    count=count+1;
end
plot (x,y,'b', 'linewidth', 5);
ylabel('AMPLITUDE');
xlabel('TIME(sec)');
title('UNIT SIGNAL');
subplot (3,2,2);
count=1;
while (count<=length(x))
    if (x(count)>0)
        z(count)=x(count);
    end
    count = count+1;
end
plot (x,z,'b', 'linewidth', 5);
ylabel('AMPLITUDE');
xlabel('time(sec)');
title('RAMP SIGNAL');