clc;
clear all;
close all;

t=0:0.125:2
x=[sin(pi*t)].*[unit_step_function(t)-unit_step_function(t-2)]
h=exp(-3*t).*unit_step_function(t)
y=conv(x,h)


subplot(311)
stem(t,x,'r')
xlabel('Time')
ylabel('Amplitude')
title('Input response, x(t)=sin(πt)[u(t)-u(t-2)] ');

subplot(312)
stem(t,h,'g')
xlabel('Time')
ylabel('Amplitude')
title('Impulse response, h(t)=e^{-3t}u(t)');


subplot(313)
stem(y,'c')
xlabel('Number of sample')
ylabel('Amplitude')
title('Convoluted signal')
