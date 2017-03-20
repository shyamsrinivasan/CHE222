%Problem 15-16 in Brad's courses Gas Phase PFR

global L
L = 50  	;			%tube length, m
y0=[0,410];
opts = odeset('RelTol',1e-6);
[x,y]=ode23(@Prob15_16rate_eqns,[0 L],y0,opts);
figure
subplot(211);
plot(x,y(:,1));
subplot(212);
plot(x,y(:,2));

