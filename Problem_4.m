clc;
clear all;
close all;

n1=-1:0.001:0
y1=ramp_function(-n1-1)

n2=0:0.001:1
y2=ramp_function(n2)

n3=1:0.001:2
y3=unit_step_function(n3-1)

n4=2:0.001:3
y4=ramp_function(3-n4)

time=[-1 n1 n2 n3 n4 3]
signal=[0 y1 y2 y3 y4 0]
subplot(121)
plot(time,signal,'g','linewidth',3)
xlabel('t---->')
ylabel('x(t)----->')
grid


n1=-2:0.001:-1
y1=unit_step_function(n1+2)

n2=-1:0.001:0
y2=-1*unit_step_function(n2+1)

n3=0:0.001:1
y3=ramp_function(n3-1)

n4=1:0.001:2
y4=unit_step_function(n4-1)

time=[-2 n1 n2 n3 n4 2]
signal=[0 y1 y2 y3 y4 0]
subplot(122)
plot(time,signal,'r','LineWidth',3)
xlabel('t---->')
ylabel('y(t)----->')
grid;
