% Quiz 2 Newton Raphson runscript
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
    jinvf(:,iter) = Jadcstr(xiter(:,iter))\adcstr(xiter(:,iter));
    xiter(:,iter+1) = xiter(:,iter) - jinvf(:,iter);
    error(:,iter+1) =...
    abs((xiter(:,iter+1) - xiter(:,iter))./xiter(:,iter+1));
    iter = iter+1;    
end

figure
plot(1:iter-1,error(:,1:iter-1));
xlabel('Iterations');
ylabel('Variable Error');
figure
plot(1:iter-1,xiter(:,1:iter-1));
xlabel('Iterations');
ylabel('X and Y');