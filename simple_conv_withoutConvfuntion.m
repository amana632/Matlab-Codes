clear all;
close all;

prompt1 = 'Enter 1st sequence.';
f = input(prompt1);
prompt2 = 'Enter 2nd sequence.';
g = input(prompt2);

%f=[6,7,8,9,10];
%g=[5,6];
F = [f,zeros(1,length(g))]; 
G = [g,zeros(1,length(f))]; 


for i=1:length(g)+length(f)-1
C(i) = 0; 

for j=1:length(f) 
if(i-j+1>0) 
C(i) = C(i) + F(j) * G(i-j+1); 
else 
end 
end 
end
 
disp(C);
disp(conv(f,g));
subplot(3,1,1);
stem(f);
subplot(3,1,2);
stem(g);
subplot(3,1,3);
stem(C);