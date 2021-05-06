clc;
clear all;
close all;

f=10
fs1=f*10
fs2=f*1.5
n=0:1/fs1:1
y=3*sin(2*pi*f*n)
subplot(211)
stem(n,y)
xlabel('Time')
ylabel('Amplitude')
title('3sin(20πt) with sampling frequency 10 times the maximum frequency')

n=0:1/fs2:1
y=3*sin(2*pi*f*n)
subplot(212)
stem(n,y)
xlabel('Time')
ylabel('Amplitude')
title('3sin(20πt) with sampling frequency 1.5 times the maximum frequency')
