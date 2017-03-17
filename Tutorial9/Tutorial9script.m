% Euler Tutorial 9 script
t0 = 0;
tmax = 0.04;
h = 0.01;
iter  = 1;
itermax = 100;
xiter = zeros(2,itermax);
fxiter = zeros(2,itermax);
titer = zeros(1,itermax);
t = t0;
xiter(:,iter) = [5;5];
figure
while t<=tmax
    subplot(4,1,1)
    hold on
    plot(t,xiter(1,iter),'Marker','.','MarkerSize',6);
    drawnow
    subplot(4,1,2)
    hold on
    plot(t,xiter(2,iter),'Marker','.','MarkerSize',6);
    drawnow
    xiter(:,iter+1) = xiter(:,iter) + h*EulerTutorial9(xiter(:,iter));
    titer(iter+1) = titer(iter)+h;
    t = titer(iter+1);    
    iter = iter+1;
end

[tout,yout] = ode45(@Tutorial9ode,[t0,tmax],xiter(:,1));
subplot(4,1,3);
plot(tout,yout(:,1),'Marker','.','MarkerSize',6);
subplot(4,1,4);
plot(tout,yout(:,2),'Marker','.','MarkerSize',6);