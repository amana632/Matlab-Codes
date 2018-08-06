clear all;
close all;
x=input('Enter the mumerator matrix:');
y=input('Enter the denominator');
[r,p,k]=residue(x,y);
disp(r);
disp(p);
disp(k);
disp('The inverse Z-transformation is:');
for i=1:length(r)
    fprintf('%f * (%f^n) * u(n)+', r(i),p(i));
end

fprintf('%f * d(n)',k);

zplane(x,y)
hold on
plot(p,'^r')
hold off

