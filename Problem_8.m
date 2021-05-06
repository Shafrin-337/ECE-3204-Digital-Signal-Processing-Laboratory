clc;
close all;
clear all;

fs=2000
FN=fs/2
fc=350
wc=2*pi*fc
N=4

[z,p,k]=buttap(N)
w=linspace(0,FN/fc,1000);
h=freqs(k*poly(z),poly(p),w)
f=fc*w;

figure(1)
plot(f,20*log10(abs(h)),'b');
grid;
xlabel('Frequency(Hz)')
ylabel('Magnitude(dB)')
title('IIR Filter')

[b,a]=butter(N,wc,'s')
[bz,az]=impinvar(b,a,fs)
[h,f]=freqz(bz,az,512,fs)

figure(2)
subplot(311)
plot(f,20*log10(abs(h)),'g');
grid;
xlabel('Frequency(Hz)')
ylabel('Magnitude(dB)')
title('Magnitude-frequency response')

subplot(312)
zplane(bz,az)
zz=roots(bz)
pz=roots(az)
title('Pole zero diagram')

subplot(313)
[gd,f]=grpdelay(bz,az)
plot(f,gd,'m')
grid;
xlabel('Frequency');
ylabel('Delay');
title('Group delay response')

sgt = sgtitle('IIR filter using Impulse Invariant Method','color','blue')
sgt.FontSize = 15;

[b,a]=butter(N,fc/FN)
[z,p,k]=butter(N,fc/FN)
[h,f]=freqz(k*poly(z),poly(p),512,fs)

figure(3)
subplot(311)
plot(f,20*log10(abs(h)),'g');
grid;
xlabel('Frequency(Hz)')
ylabel('Magnitude(dB)')
title('Magnitude-frequency response');

subplot(312)
zplane(b,a)
title('Pole zero diagram')

subplot(313)
[gd,f]=grpdelay(b,a)
plot(f,gd,'m')
grid;
xlabel('Frequency');
ylabel('Delay');
title('Group delay response')

sgt = sgtitle('IIR filter using BZT method','color','blue')
sgt.FontSize = 15;
