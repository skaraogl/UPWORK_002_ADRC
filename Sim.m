%% SIMULATE MODEL
model = 'PTC_IM';
% Parameters
T_L = 0;
% T_L = 200;
n_ref = 2772;
% omega_r_ref = 2*pi*(n_ref/60);
omega_r_ref = 180;

% Define paremeters in model
set_param([model,'/T_load'],'Gain',num2str(T_L))
set_param([model,'/Rotor_Speed_Ref'],'Value',num2str(omega_r_ref))

% Simulate Model
% out = sim(model);

%% DATA


%% PLOTTING
% figure
% 
% subplot(2,1,1)
% hold on 
% plot(out)
