
function rhs = lotka_volterra_1d_rhs(t, x, dummy, r)

rhs = r*x*(1-x);