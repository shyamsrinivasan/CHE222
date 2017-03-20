prep;
figure
opts = odeset('RelTol',1e0);
% opts = odeset('RelTol',1e-3);
[tout,yout] = ode23s(@Tutorial9ode,[t0,tmax],xiter(:,1),opts);
subplot(2,1,1);
xlabel('Time');
ylabel('Ca');
plot(tout,yout(:,1),'Marker','.','MarkerSize',6);
subplot(2,1,2);
xlabel('Time');
ylabel('Cb');
plot(tout,yout(:,2),'Marker','.','MarkerSize',6);