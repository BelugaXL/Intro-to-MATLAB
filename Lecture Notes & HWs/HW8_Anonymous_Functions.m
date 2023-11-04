%% HW8_Anonymous_Functions

clear, clc, close all
format short

%% Task 1 Define an anonymous function: f(x)=(sin(x)+4x)/x^2

f = @(x)(sin(x)+4*x)./x.^2;

%% Task 2 Evaluate f(5)

A = f(5);
disp(A)

%% Task 3 Define an anonymous function: g(x)=e^(cos(x)^k), k is a random variable

k = randn(1); % random variable
g = @(x)exp(cos(x).^k);

%% Task 4 Evaluate g(pi/4)

B = g(pi/4);
disp(B)

%% Task 5 Define a row vector, x, from 0 to 1 with each element spaced by 0.1

x = 0:0.1:1;

%% Task 6 Evaluate g(f(g(x)))

C = g(x);
C = f(C);
C = g(C);
C = C';
disp(C)