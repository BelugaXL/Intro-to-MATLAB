%% HW10_Solving_Equations_Symbolically

clear, clc, close all
format short

%% Converting Between Symbolic and Numeric Values

A = imread('HW10_Task1_Description_Screenshot.png');
figure(1)
image(A)

syms x
f(x) = asin(x)
z = sqrt(1-x^2)^-1

ydouble = double(f(1))
% Use the subs function to substitute the value of 0.25 for the symbolic variable x
zdouble = double(subs(z, x, 0.25))
phisym = str2sym('(1+sqrt(5))/2')
phidouble = double(phisym)

disp('______________________________________________________')

%% Solving Equations Symbolically

B = imread('HW10_Task2_Description_Screenshot.png');
figure(2)
image(B)

syms y x1 x2 x3
% Create the equation for y
eq = (y^3)-y == 2/y
% Solve for y
ySol = solve(eq,y)
% Add an assumption on y using the ASSUME function below
assume(y,'real')
% Obtain only the real solutions for y
ySolReal = solve(eq,y)

% Create a column vector containing the system of equations 
% for x1, x2, and x3 given in the problem description
eqs = [2*x1-3*x2 == -5;x2 == 1-x3/4;3*x1-x2-x3 == 10]
% Solve the system of equations
vars = [x1, x2, x3]
[x1sol, x2sol, x3sol] = solve(eqs, vars)


