%% HW1 - Sphere Volume
% This script calculates the volume of a sphere.
% Assigns the resulting value, with unit [m^3], to a varable named vol.

%% Clear variables, command window, and close open figures.

clear, clc, close all
%% Define initial variable/givens
% Sphere radius
r = randn(1); % randon number, [mm]
r = abs(r); % absolute value

%% Convert variables to proper units
% 100mm = 1m
r = r/100;

%% Calculating the volume of a sphere
vol = (4/3)*pi*(r^3);

A = ['The volume of a sphere with radius r = ',num2str(r),' (m) is ',num2str(vol), ' (m^3).'];
disp(A)