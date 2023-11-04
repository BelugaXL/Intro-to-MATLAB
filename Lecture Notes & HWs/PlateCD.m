%% Calculate Drag Coefficient

% out: drag coefficient (C_D)
% ReL = U*L/nu (Reynolds number)
% U: velocity, [m/s]
% L: plate length, [m]
% nu: fluid kinematic viscosity, [m^2/s]

%% Task requirement:

% DO NOT use more than one comparison in a given conditional statement

%% Code

function out = PlateCD(U,L,nu,type)
% define variables for comparison with type input string
l = 'l'; % define variable l as string 'l' (Laminar)
t = 't'; % define variable t as string 't' (Turbulent)
m = 'm'; % define variable m as string 'm' (Mixed)

% output when flow not specified properly or ReL out of range
out = 'Indeterminate';

    if type == l % if this condition is true, the flow type input by the user is laminar
        if (U*L/nu) <= 5*10^5
            out = 1.328/(U*L/nu)^(1/2);
        end
    elseif type == t
        if (U*L/nu) < 5*10^5
            out;
        elseif (U*L/nu) <= 10^7
            out = 0.074/(U*L/nu)^(1/5);
        elseif (U*L/nu) <= 10^9
            out = 0.455/(log10((U*L/nu)))^(2.58);
        else
            out;
        end
    elseif type == m
        if (U*L/nu) < 5*10^5
            out;
        elseif (U*L/nu) >= 10^9
            out;
        else
            out = (0.455/(log10((U*L/nu)))^(2.58))-1700/(U*L/nu);
        end
    else
        out;
    end
    
end

%% For command window
% U = 10; % velocity, [m/s]
% L = 0.5; % plate length, [m]
% nu = 8e-7; % fluid kinematic viscosity, [m^2/s]
% flow = 'l'; % flow type: 'l' for laminar, 't' for turbulent, and 'm' for mixed
% PlateCD(U,L,nu,flow)
