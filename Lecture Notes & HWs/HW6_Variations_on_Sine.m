%% HW6 - Variations on Sine
% This script plot 4 different Sine function all at one figure.

%% Clear variables, command window, and close open figures.

clear, clc, close all
%% Define the initial variables (deg and rad)
deg = linspace(-360,360,100);
theta = deg2rad(deg);

%% Create the matrix, y
y = [sin(theta);sin(theta)-1;2.*sin(theta);sin(theta./2)];

%% Plotting
figure(1)
plot(theta,y(1,:),'k')
hold on
plot(theta,y(2,:),'g')
plot(theta,y(3,:),'r')
plot(theta,y(4,:),'b')
title('Variations on Sine','Interpreter','latex')
xlabel('$\theta,[rad]$','Interpreter','latex')
ylabel('$f(\theta)$','Interpreter','latex')
legend('$sin(\theta)$','$sin(\theta)-1$','$2sin(\theta)$','$sin(\theta/2)$','interpreter','latex')