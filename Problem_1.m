clc; 
clear all;
close all;

n = -5:1: 10;

y = 3*unit_step_function(n-3)-unit_step_function(n-7);
stem(n, y,'r','LineWidth',3)
hold on;

y= unit_impulse_function(n+2)-2*unit_impulse_function(n-2);
stem(n, y,'g','LineWidth',3)
hold on;

freq1=24
freq2=30
for n=-5:0.25:10
y=5*exp(3*n).*sine_function(n*freq1)+3*cosine_function(n*freq2)
stem(n,y,'b')
    hold on
end

xlabel('Time')
ylabel('Amplitude')
title('Signal plotting')
legend('3u(t-3)-u(t-7)','δ(t+2)-2δ(t-2)','5e^3t sin(48πt)+3cos(60πt)')
