
% Lotka-Volterra models of competiions for 3 species

close all;
clear all;
clc;

r1 = 1;
r2 = 1;
r3 = 1;
r = [r1 r2 r3];

a12 = 0.5;
a13 = 0.6;
a21 = 0.6;
a23 = 0.4;
a31 = 1.7;
a32 = 0.5;

a = [a12 a13 a21 a23 a31 a32];

x1_0 = 0.1;
x2_0 = 0.5;
x3_0 = 0.7;

x0 = [x1_0 x2_0 x3_0];

dt = 0.1;
t = 0:dt:30;

[T,X] = ode45('lotka_volterra_3d_rhs', t, x0, [], r, a);

plot(T,X)
legend('x1','x2','x3')