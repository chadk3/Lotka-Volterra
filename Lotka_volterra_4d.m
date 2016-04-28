% Lotka-Volterra models of competiions for 4 species

close all;
clear all;
clc;

r1 = 1;
r2 = 1;
r3 = 1;
r4 = 1;
r = [r1 r2 r3 r4];

a12 = 0.5;
a13 = 0.6;
a14 = 0.5;
a21 = 0.6;
a23 = 0.4;
a24 = 0.2;
a31 = 0.7;
a32 = 0.5;
a34 = 0.4;
a41 = 0.2;
a42 = 0.6;
a43 = 0.9;

a = [a12 a13 a14 a21 a23 a24 a31 a32 a34 a41 a42 a43];

x1_0 = 0.1;
x2_0 = 0.5;
x3_0 = 0.7;
x4_0 = 0.6;

x0 = [x1_0 x2_0 x3_0 x4_0];

dt = 0.1;
t = 0:dt:30;

[T,X] = ode45('lotka_volterra_4d_rhs', t, x0, [], r, a);

plot(T,X)