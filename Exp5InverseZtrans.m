x=input('Enter the mumerator matrix:');
y=input('Enter the denominator');
[r,p,k]=residuez(x,y);
disp('Hello');
disp(r);
disp('Hello1');
disp(p);
disp('Hello2');
disp(k);
disp('Hello3');
disp('The inverse Z-transformation is:');
for i=1:length(r)
    fprintf('%f * (%f^n) * u(n)+', r(i),p(i));
end

zplane(x,y)
hold on
%plot(p,'^r')
hold off


disp('Hello');
fprintf('%f*d(n)',k);