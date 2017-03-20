prep;

figure
while t<=tmax
    subplot(4,1,1)
    xlabel('Time');
    ylabel('Ca');
    hold on
    plot(t,xiter(1,iter),'Marker','o','MarkerSize',6,'Color','r');
    drawnow
    subplot(4,1,2)
    xlabel('Time');
    ylabel('Cb');
    hold on
    plot(t,xiter(2,iter),'Marker','o','MarkerSize',6,'Color','b');
    drawnow
    fx = EulerTutorial9(xiter(:,iter));
    xiter(:,iter+1) = xiter(:,iter) + h*fx;    
    subplot(4,1,3)
    xlabel('Time');
    ylabel('dCa/dt');
    hold on
    plot(t,fx(1),'Marker','o','MarkerSize',6,'Color','r');
    subplot(4,1,4)
    xlabel('Time');
    ylabel('dCb/dt');
    hold on
    plot(t,fx(2),'Marker','o','MarkerSize',6,'Color','b');
    titer(iter+1) = titer(iter)+h;
    t = titer(iter+1);    
    iter = iter+1;
end
