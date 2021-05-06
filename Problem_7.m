clc;
clear all;
close all;

N=51
format long
b=[5 -2 2 0 -1]
a=[1 1 0 -3 3]

n=0:N-1
x=sin(2*pi*0.125*n)
y=filter(b,a,x)
subplot(311)
stem(n,x,'r')
xlabel('Time');
ylabel('Amplitude');
title('Input signal for IIR filter')

subplot(312)
stem(n,y,'m')
xlabel('Time');
ylabel('Amplitude');
title('Filtered output signal using IIR filter')

[z,p,k]=tf2zp(b,a)
sos=zp2sos(z,p,k)
subplot(313)
zplane(z,p)
title('Pole Zero Diagram')

disp('The poles are:')
disp(p)

disp('The zeros are:')
disp(z)

disp('Second order sections are:')
disp(sos)
