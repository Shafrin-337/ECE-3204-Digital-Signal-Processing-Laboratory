clc;
clear all;
close all;

N=1024
r1=rand(1,N)
r2=rand(1,N)
n=0:N-1
signal=cos(2*pi*0.1*n)
R1=r1+signal
R2=r2+signal

subplot(421)
plot(r1,'g')
xlabel('Sample Number')
ylabel('Amplitude')
title('Uniformly Distributed Random Signal 1')

subplot(422)
plot(r2,'y')
xlabel('Sample Number')
ylabel('Amplitude')
title('Uniformly Distributed Random Signal 2')

subplot(4,2,[3,4])
plot(n,signal)
xlabel('Time')
ylabel('Amplitude')
title('Cosine Signal: cos2\pift')
axis([0 1024 -1 1])

subplot(425)
plot(R1,'g')
xlabel('Sample Number')
ylabel('Amplitude')
title('Noisy Signal 1')

subplot(426)
plot(R2,'y')
xlabel('Sample Number')
ylabel('Amplitude')
title('Noisy Signal 2')

subplot(427)
hist(R1)
xlabel('Sample Number')
ylabel('Total')
title('Histogram[pdf] of Noisy Signal 1')

subplot(428)
hist(R2)
xlabel('Sample Number')
ylabel('Total')
title('Histogram[pdf] of Noisy Signal 2')
