%% Compare the Work Done Using Constant and Variable Gravity
% Calculate the maximun heigth for which W_c is at least 1% smaller than W_v
% W_c: Work done by gravity with constant Force
% W_v: Work done by gravity with variable Force

%%
clear all
% Physical constants
G = 6.674e-11;   % Gravitational Constant (m^3/(kg*s^2))
M = 5.972e24;    % Mass of Earth (kg)
R = 6.371e6;     % Radius of Earth (m)

%% Increasing height
m = 1;                                  % Set the mass of the object = 1 (kg)
H = 1;                                  % Set initial height = 1 (m)
Err = 0.001;                            % Set initial error = 0.001%
while Err <= 1
    H = H + 1;                          % The height increases by 1 meter each time
    W_c = m*(G*M/R^2)*H;                % Work done by gravity with constant Force
    W_v = -G*M*m*(1/(R+H)-1/R);         % Work done by gravity with variable Force
    Err = abs((W_v-W_c)/W_v)*100;       % Calaculates error percentage
end
disp('Increasing height (Manual)')
disp([num2str(H),' (m) is the maximun height for calculating the work done by gravity that can be approximated by constant F, with 1% error.'])

%% Decreasing height
m = 1;                                  % Set the mass of the object = 1 (kg)
H = 0.1*R;                              % Set initial height = 0.1R (m)
Err = 10;                               % Set initial error = 10%
while Err > 1
    H = H - 1;                          % The height decreases by 1 meter each time
    W_c = m*(G*M/R^2)*H;                % Work done by gravity with constant Force
    W_v = -G*M*m*(1/(R+H)-1/R);         % Work done by gravity with variable Force
    Err = abs((W_v-W_c)/W_v)*100;       % Calaculates error percentage
end
disp('Decreasing height (Manual)')
disp([num2str(H),' (m) is the maximun height for calculating the work done by gravity that can be approximated by constant F, with 1% error.'])


%% Increasing height (Integral)
m = 1;                                  % Set the mass of the object = 1 (kg)
H = 1;                                  % Set initial height = 1 (m)
Err = 0.001;                            % Set initial error = 0.001%
while Err <= 1
    H = H + 1;                          % The height increases by 1 meter each time
    W_c = m*(G*M/R^2)*H;                % Work done by gravity with constant Force
    W_v = integral(@(x) G*M*m./(x.^2),R,R+H);         % Work done by gravity with variable Force
    Err = abs((W_v-W_c)/W_v)*100;       % Calaculates error percentage
end
disp('Increasing height (Integral)')
disp([num2str(H),' (m) is the maximun height for calculating the work done by gravity that can be approximated by constant F, with 1% error.'])
