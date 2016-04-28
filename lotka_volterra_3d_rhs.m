
function rhs = lotka_volterra_3d_rhs(t, x, dummy, r, a)
x1 = x(1);
x2 = x(2);
x3 = x(3);

r1 = r(1);
r2 = r(2);
r3 = r(3);

a12 = a(1);
a13 = a(2);
a21 = a(3);
a23 = a(4);
a31 = a(5);
a32 = a(6);

d1 = r1*x1*(1 - x1 - a12*x2 - a13*x3);
d2 = r2*x2*(1 - a21*x1 - x2 - a23*x3);
d3 = r3*x3*(1 - a31*x1 - a32*x2 - x3);

rhs = [d1; d2; d3];