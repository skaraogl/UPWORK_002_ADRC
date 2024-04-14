% Variables defined in the parameters file
 % global Ts Rs Lr Lm Ls p tr kr r_sigma t_sigma lambda v states

 % Sampling time of the predictive algorithm [s]
 Ts = 5e-5;
 % PI speed controller parameters
 %Kp = ; % Proportional gain
 %Ki = ; % Integrative gain
 % Machine parameters
 J = 1.662; % Moment of inertia [kg m^2]
 F = 0.01; % Friction factor
 p = 2; % Pole pairs
 Lls =8e-4;
 Llr = 8e-4; 
 Lm=34.7e-3; % Magnetizing inductance [H]
 Ls = Lm+Lls; % Stator inductance [H]
 Lr = Lm+Llr; % Rotor inductance [H]
 Rs = 0.087; % Stator resistance [Ohm]
 Rr = 0.228; % Rotor resistance [Ohm]
 sf_nom = 0.9; % Nominal stator flux [Wb]
 T_nom = 229; % Nominal torque [Nm]
 % DC-link voltage [V]
 %V=460 
 Vdc = 780; %if is necessary change Vdc
 % Auxiliary constants
 ts = Ls/Rs;
 tr = Lr/Rr;
 sigma = 1-(((Lm)^2)/(Lr*Ls));
 kr = Lm/Lr;
 r_sigma = Rs+kr^2*Rr;
 t_sigma = sigma*Ls/r_sigma;
 % Weighting factor for the cost function of PTC
 %lambda = ;
 % Voltage vectors
 v0 = 0;
 v1 = 2/3*Vdc;
 v2 = 1/3*Vdc + 1j*sqrt(3)/3*Vdc;
 v3 = -1/3*Vdc + 1j*sqrt(3)/3*Vdc;
 v4 = -2/3*Vdc;
 v5 = -1/3*Vdc - 1j*sqrt(3)/3*Vdc;
 v6 = 1/3*Vdc - 1j*sqrt(3)/3*Vdc;
 v7 = 0;
 v = [v0 v1 v2 v3 v4 v5 v6 v7];
% Switching states
 states = [0 0 0;1 0 0;1 1 0;0 1 0;0 1 1;0 0 1;1 0 1;1 1 1];
