
% Lotka-Volterra models of competition for 1 species

close all;
clear all;
clc;

t = 0:0.1:10;
x = 0:0.01:1;

r = 1;
x0 = 0.1;

[T,X] = ode45('lotka_volterra_1d_rhs', t, x0, [], r);

figure(1)
plot(T,X)
title('Solution for N = 1, r = 1, x0 = 0.1')
xlabel('t')
ylabel('Population')

figure(2)
plot(x,r*x.*(1-x))
title('Plot of derivative for N = 1, r = 1, x0 = 0.1')
xlabel('x')
ylabel('dx/dt')
