clear all;
close all;

in1=[1 2 3 4]; 
in2=[1 2 3 4];

if length(in1)>length(in2)
pad = length(in1)-length(in2);
in2 = [in2 zeros(1,pad)];
elseif length(in1)<length(in2)
pad = length(in2)-length(in1);
in1 = [in1 zeros(1,pad)];
end

out_len = length(in1);
out = zeros(1,out_len);

tmp = in2;
for k = 1:out_len
out(k) = in1*tmp';
tmp = [0 tmp(1:end-1)];
end

figure;
stem(out);
title('CORRELATION OUTPUT');
[m,n]=max(out); 


