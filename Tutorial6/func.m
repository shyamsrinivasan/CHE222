function fxy = func(x)
fxy = zeros(2,1);

fxy(1) = x(1)^2 + x(2)^3 - 1;
fxy(2) = x(1)^4 - x(2)^4 + x(1)*x(2);