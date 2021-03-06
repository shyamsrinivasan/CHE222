function [Jinv,J] = jinverse(x)

Jinv = 1/(-8*x(1)*x(2)^3+2*x(1)^2-12*x(1)^3*x(2)^2-3*x(2)^3)*...
        [-4*x(2)^3+x(1) -3*x(2)^2;...
        -4*x(1)^3-x(2) 2*x(1)];
J = [2*x(1) 3*x(2)^2;...
    4*x(1)^3+x(2) -4*x(2)^3+x(1)];