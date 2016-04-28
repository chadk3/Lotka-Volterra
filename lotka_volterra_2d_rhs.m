
function rhs = lotka_volterra_2d_rhs(t, x, dummy, r1, r2, a12, a21)

x1 = x(1);
x2 = x(2);

d1 = r1*x1*(1 - x1 - a12*x2);
d2 = r2*x2*(1 - a21*x1 - x2);

rhs = [d1; d2];