function [dy_dx] = Prob15_16rate_eqns(x,y)
global L
n_vars=2; %defining the number of species fb, T
%defining vars
fB=y(1);
Temp=y(2);

%First defining the parameters
%data
D = 0.015  	;		%tube diameter, m
R = 8.314  ;			%gas constant, kPa L mol-1 K-1
yAo = 0.60 ; 			%mole fraction of A in the feed
yBo = 0.40 ; 			%mole fraction of B in the feed
qo = 5.5  ;				%volumetric feed rate, L s-1
To = 410 ; 			%inlet temperature, K
Po = 800 ; 			%total inlet pressure, kPa
MA = 28 ; 				%molar mass of A, g mol-1
MB = 32 ; 				%molar mass of B, g mol-1
MC = 30 ; 				%molar mass of C, g mol-1
U = 125 ; 				%heat transfer coefficient, W m-2 K-1
%U=0; %adiabatic
Ts = 410;  				%wall temperature, K
FAo = yAo*Po*qo/(R*To) ; 	%molar flow rate of A, mol s-1
FBo = yBo*Po*qo/(R*To)  ;	%molar flow rate of B, mol s-1
cpA = 0.85 	;		% heat capacity of A, J g-1 K-1
cpB = 0.95 	;		%heat capacity of B, J g-1 K-1
cpC = 1.0 	;		%heat capacity of C, J g-1 K-1
DeltaH = -11000; 		%Enthalpy of reaction, J mol-1


%Calculating rates etc
FB = FBo*(1-fB);  			%molar flow rate of B, mol s-1
FA = FAo - FBo*fB; 			%molar flow rate of A, mol s-1
FC = 2.0*FBo*fB;  %molar flow rate of C, mol s-1
kB = 1.0E6*exp(-4900/Temp);  	%Arrhenius expression, L mol-1 s-1
P = Po - 6.722*x; %non-isobaric operation
%P=Po; %isobaric
q = (FA + FB + FC)*R*Temp/P;		%volumetric flow rate, L/s 

cA = FA/q ; 				%concentration of A, mol L-1
cB = FB/q ; 				%concentration of B, mol L-1
rB = kB*cA*cB*1000; 			%rate expression, mol m-3 s-1 			

%calculation of weighted average heat capacity, W K-1
mdotCp = FA*MA*cpA + FB*MB*cpB + FC*MC*cpC  ;



dy_dx = zeros(n_vars,1);    % a column vector

dy_dx(1) = pi*D^2*rB/(4*FBo);
%dy_dx(2) = 0; %isothermal
dy_dx(2) = (-DeltaH*rB*pi*D^2/4 + pi*D*U*(Ts - Temp))/mdotCp ; %nonisothermal

