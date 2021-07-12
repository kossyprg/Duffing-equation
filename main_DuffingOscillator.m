clear all;
close all;
clc;

% ===== parameters =====
alpha = 1;
beta = -1;
delta = 0.2;
gamma = 0.3;
omega = 1;

T = 2*pi/omega; % period
dN = 10;
dt = T/dN;      % sampling interval
N = 100000;     % sample size
time = 0:dt:dt*(N-1);

x0 = [0;1]; % initial value

% ===== solve =====
[t,x]=ode45(@(t,x) duffing(x,t,alpha,beta,delta,gamma,omega),time,x0);

% ===== figure =====
FS = 16; % fontsize

figure;
plot(time(end-dN*20:end),x(end-dN*20:end,1),'-k');
grid on;
xlabel('Time');
ylabel('x(t)');
set(gca,'fontsize',FS);

figure;
plot(time(end-dN*20:end),x(end-dN*20:end,2),'-k');
grid on;
xlabel('Time');
ylabel('y(t)');
set(gca,'fontsize',FS);

% ===== Poincare section =====
x_ext = x(1:dN:end,:);

figure;
plot(x_ext(:,1),x_ext(:,2),'.r');
grid on;
axis equal;
title('XY plane');
xlabel('x');
ylabel('y');
set(gca,'fontsize',FS);

