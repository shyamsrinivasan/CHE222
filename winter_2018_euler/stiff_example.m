function fxy = stiff_example(t, x)
k1 = 0.001;
k2 = 1000;
fxy = [-k1*x(1);k1*x(1)-k2*x(2)]; 