%% HW2 - Cylinder Volume
% This script calculates the volume of a cylinder.
% Assigns the resulting values, with unit [mm^3], to a single varable named vol.

%% Clear variables, command window, and close open figures.

clear, clc, close all

%% Define cylinder parameters: high (h) and radius (r)
% Cylinder high
h = randn(1); % randon number, [mm]
h = abs(h); % absolute value

%  Cylinder radius 
r = linspace(1,10,10); % (1mm <= r <= 10mm, spaced bt 1mm)

%% Calculating the volume of a cylinder
vol = (r.^2).*(pi*h);

vol = vol'; % reorenatate it for later display purpose.
A = ['The list below are volumes of cylinders (mm^3) with high h = ', num2str(h),' (mm) and 10 different radius r from 1 to 10 (mm).'];
disp(A);
disp(vol)