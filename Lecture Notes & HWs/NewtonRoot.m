%% Applying Newton's Method for Locating Roots

%% Task:
% 1st Output: the value of the root
% 2nd Output: the number of iterations required to find the root

% Defining a single variable x and setting up an algorithm properly

%% Code
function [x,iter] = NewtonRoot(init_guess,a)

% Define your anonymous functions and any other necessary variables

f = @(x) a*x - cos(x);
fprime = @(x) a + sin(x);
x = init_guess;
iter = 0;

%%%%%%%%% Newton's Method %%%%%%%%%%%%%
% Implementing Newton's Method

while abs(-1*f(x)/fprime(x)) >= 1e-8
    x = x + (-1*(f(x)/fprime(x)));
    iter = iter + 1;  
end

end
%% For command window
% a = 1;
% xguess = 1;
% [x,iter] = NewtonRoot(xguess,a)
