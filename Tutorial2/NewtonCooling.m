function dT = NewtonCooling(t,T)
global tau
Tinf = 288;
dT = -(T - Tinf)/tau;
