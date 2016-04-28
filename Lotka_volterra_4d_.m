function rhs = lotka_volterra_4d_rhs(t, x, dummy, r, a)
x1 = x(1);
x2 = x(2);
x3 = x(3);
x4 = x(4);

r1 = r(1);
r2 = r(2);
r3 = r(3);
r4 = r(4);

a12 = a(1);
a13 = a(2);
a14 = a(3);
a21 = a(4);
a23 = a(5);
a24 = a(6);
a31 = a(7);
a32 = a(8);
a34 = a(9);
a41 = a(10);
a42 = a(11);
a43 = a(12);

d1 = r1*x1*(1 - x1 - a12*x2 - a13*x3 - a14*x4);
d2 = r2*x2*(1 - a21*x1 - x2 - a23*x3 - a23*x4);
d3 = r3*x3*(1 - a31*x1 - a32*x2 - x3 - a34*x4);
d4 = r4*x4*(1 - a41*x1 - a42*x2 - a43*x3 - x4);

rhs = [d1; d2; d3; d4];