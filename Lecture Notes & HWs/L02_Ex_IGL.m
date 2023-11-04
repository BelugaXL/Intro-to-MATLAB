%% IGL.m
% This script claculates the number of moles for an ideal gas.

%% clear variables, command window, and close open figures.

clear, clc, close all
%% define initial variable/givens

P = 200; % pressure, [kPa]
R = 8.314; % gas constant, [kPa m^3  kmol^−1  K^−1]
T = 40; % temperature, [C]
V = 10; % volume, [cm^3]

%% Convert variables to proper units

Vm3 = V*1e-6; % volume, [m^3] (1e-6 means 10^-6)
Tk = T + 273; % absolute temperature, [K]

%% Calulate the number of moles

n = P*Vm3/(P*Tk); % calculate n in kmoles, [kmol]
n = n*1e-3; % convert n to moles, [mol]

A = ['There are ',num2str(n),' moles of ideal gas.'];
disp(A)