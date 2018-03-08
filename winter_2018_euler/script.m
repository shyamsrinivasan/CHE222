% main run script for euler
time = [0, .5];
y0 = [5;5];
h = 0.0001;
[tout, yout] = euler_explicit(time, y0, h, @stiff_example);

% using matlab's in-built solvers
opts = odeset('RelTol',1e-6);
[texact, yexact] = ode23(@stiff_example, tout, y0, opts);

figure
subplot(211);
hold on
plot(tout, yout(1, :), '-r');
% plot(texact, yexact(:, 1), '-b');
% legend('Explicit Euler', 'Exact');
ylabel('Ca (M)');
subplot(212);
hold on
plot(tout, yout(2, :), '-r');
% plot(texact, yexact(:, 2), '-b');
ylabel('Cb (M)');
xlabel('Time (?)');

figure
subplot(211);
plot(texact, yexact(:, 1), '-b');
subplot(212);
plot(texact, yexact(:, 2), '-b');