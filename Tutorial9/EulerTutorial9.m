function fxy = EulerTutorial9(x)
k1 = 0.1;
k2 = 100;
fxy = [-k1*x(1);k1*x(1)-k2*x(2)]; 