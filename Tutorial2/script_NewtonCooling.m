% Newton's Law of cooling for different time constants
global tau
alltau = [.01 .1 1 10 100]; % m*Cp/(h*A);
color = {'r','b','g','k','y'};
opts = odeset('RelTol',1e-5,'AbsTol',1e-5);
Ti = 300; % K

figure
hold on
for j = 1:length(alltau)
    tau = alltau(j);
    [t,T] = ode45(@NewtonCooling,0:1:600,Ti,opts);
    plot(t,T,'LineWidth',2,'Color',color{j});
    drawnow
end

