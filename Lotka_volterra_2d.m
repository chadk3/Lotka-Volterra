
% Lotka-Volterra models of competiions for 2 species

close all;
clear all;
clc;

r1 = 1;
r2 = 1;
a12 = 1.2;
a21 = 0.3;

x1_0 = 0.5;
x2_0 = 0.6;

x0 = [x1_0 x2_0];

dt = 0.1;
t = 0:dt:30;

[T,X] = ode45('lotka_volterra_2d_rhs', t, x0, [], r1,r2,a12,a21);

figure(1)
plot(T,X)
title('Solution for N = 2')
xlabel('t')
ylabel('Population')

