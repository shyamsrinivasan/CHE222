% Euler Tutorial 9 script
t0 = 0;
tmax = 0.05;
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
    xlabel('Time');
    ylabel('Ca');
    hold on
    plot(t,xiter(1,iter),'Marker','.','MarkerSize',6,'Color','r');
    drawnow
    subplot(4,1,2)
    xlabel('Time');
    ylabel('Cb');
    hold on
    plot(t,xiter(2,iter),'Marker','.','MarkerSize',6);
    drawnow
    fx = EulerTutorial9(xiter(:,iter));
    xiter(:,iter+1) = xiter(:,iter) + h*fx;    
    subplot(4,1,3)
    xlabel('Time');
    ylabel('dCa/dt');
    hold on
    plot(t,fx(1),'Marker','.','MarkerSize',6,'Color','r');
    subplot(4,1,4)
    xlabel('Time');
    ylabel('dCb/dt');
    hold on
    plot(t,fx(2),'Marker','.','MarkerSize',6);
    titer(iter+1) = titer(iter)+h;
    t = titer(iter+1);    
    iter = iter+1;
end

figure
opts = odeset('RelTol',1e0);
[tout,yout] = ode23(@Tutorial9ode,[t0,tmax],xiter(:,1),opts);
subplot(2,1,1);
xlabel('Time');
ylabel('Ca');
plot(tout,yout(:,1),'Marker','.','MarkerSize',6);
subplot(2,1,2);
xlabel('Time');
ylabel('Cb');
plot(tout,yout(:,2),'Marker','.','MarkerSize',6);