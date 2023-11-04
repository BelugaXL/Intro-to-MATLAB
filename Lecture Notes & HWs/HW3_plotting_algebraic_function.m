%% HW3 - Plotting algebraic function
% This script plots function f(x)=(x^2)*e^(-x) ranging from x=0 to x=5 with
% 10^3 points evenly spaced.

%% Clear variables, command window, and close open figures.

clear, clc, close all
%% Define variable
x = linspace(0,5,1000); % include 0 and 5, pick 1000 pts evenly spaced in the range
f = (x.^2).*exp(-x); % define the function
%% Plot function
plot(x,f);
% Add labels and title
xlabel('X-axis','Interpreter','latex'); % Interpret characters using LaTeX markup
ylabel('Y-axis','Interpreter','latex');
title('Function Plots of $f(x) = (x^2)e^(-x)$','Interpreter','latex');