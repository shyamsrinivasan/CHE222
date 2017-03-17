function fx = adcstr(x)
phi = 0.072;gamma = 20;beta = 8;delta = 0.3;
kappa = exp(x(2)/(1+x(2)/gamma));
fx = [-phi*x(1)*kappa+1-x(1);beta*phi*x(1)*kappa-(1+delta)*x(2)];