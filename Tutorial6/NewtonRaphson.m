% Tutorial 6 February 27 2017
% Newton Raphson Example 1
xinit = [1;1];
eps = 1e-6;
itermax = 100;

nvar = size(xinit,1);
xiter = zeros(nvar,itermax);
error = zeros(nvar,itermax);
jinvf = zeros(nvar,itermax);

iter = 1;
xiter(:,iter) = xinit;
error(:,iter) = 1;
while any(error(:,iter)>eps) && iter<itermax
    jinvf(:,iter) = jinverse(xiter(:,iter))*func(xiter(:,iter));
    xiter(:,iter+1) = xiter(:,iter) - jinverse(xiter(:,iter))*func(xiter(:,iter));
    error(:,iter+1) = abs((xiter(:,iter+1) - xiter(:,iter)));
    iter = iter+1;
end

