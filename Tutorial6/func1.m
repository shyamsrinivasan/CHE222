function fxy = func1(x)

fxy = zeros(2,1);
fxy(1) = (x(1)-4)^2 + (x(2)-4)^2 - 5;
fxy(2) = x(1)^2 + x(2)^2 - 16;