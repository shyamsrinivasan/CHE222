% Euler Tutorial 9 script
t0 = 0;
tmax = 0.4;
h = 0.01;
% h = 0.001;
iter  = 1;
itermax = 100;
xiter = zeros(2,itermax);
fxiter = zeros(2,itermax);
titer = zeros(1,itermax);
t = t0;
xiter(:,iter) = [5;5];
