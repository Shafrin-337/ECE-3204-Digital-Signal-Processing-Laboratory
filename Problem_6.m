clc;
clear all;
close all;

t=-1:0.05:1
xn=2*exp(5*t).*sin(50*pi*t)

subplot(3,2,[1,2])
stem(t,xn)
xlabel('Time')
ylabel('Amplitude')
title('Input sequence: 2e^{5t}sin(50πt)')

fourier_transform=fft(xn)
subplot(323)
stem(t,fourier_transform)
xlabel('Time')
ylabel('Amplitude')
title('Fast Fourier Transform')

Ifourier_transform=ifft(fourier_transform)
subplot(324)
stem(t,Ifourier_transform)
xlabel('Time')
ylabel('Amplitude')
title('Inverse Fast Fourier Transform')

magnitude=abs(fourier_transform)
phase=angle(fourier_transform)

subplot(325)
stem(t,magnitude)
xlabel('K')
ylabel('Amplitude')
title('Magnitude response')

subplot(326)
stem(t,phase)
xlabel('K')
ylabel('Amplitude')
title('Phase response')
