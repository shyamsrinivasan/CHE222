% function for numerical integration using Explicit Euler's Method
% yi+1 = y1 + hf(ti, yi)
function [t, ynew] = euler_explicit(time, y0, h, funh)

t0 = time(1);
tf = time(2);

npoints = length(t0:h:tf);
ynew = zeros(size(y0,1), npoints);
t = zeros(1, npoints);

index = 1;
t(index) = t0;
ynew(:,index) = y0;
fprintf('iteration \t\t time\n');
while t(index) < tf
    fprintf('%d \t\t %2.2f\n', index, t(index));
    ynew(:, index+1) = ynew(:, index) + h*funh(t(index),ynew(:, index));
    t(index+1) = t(index) + h;
    index = index + 1;
end



