function Jx = Jadcstr(x)
Jx = zeros(2,2);
phi = 0.072;gamma = 20;beta = 8;delta = 0.3;
kappa = exp(x(2)/(1+x(2)/gamma));
Jx(1,:) = [-phi*kappa-1 -phi*x(1)*kappa/(1+x(2)/gamma)^2];
Jx(2,:) = [beta*phi*kappa beta*phi*x(1)*kappa/(1+x(2)/gamma)^2-(1+delta)*x(2)];
