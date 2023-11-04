function [C,TaylorEXP,Err] = TaylorSeriesFUN(f,aValue,n,xValue)
% This function grnerates taylor series of any given function

%% Inputs & Outputs: 

% f: function (symbolic math)
% aValue: point at which the function based on
% n: number of terms needed
% xValue: a point for test out y value

% C: list of coefficient from C_0 to C_n
% TaylorEXP: TaylorEXP(aValue,xValue) function handle
% Err: the aboslute error between f(xValue) and TaylorEXP(aValue,xValue)

%% Function

syms x a

C = zeros(1,n);     % preallocate coefficient
N = sym('x',[1 n]); % preallocate symbolic matrices 

for i = 0:1:n
    dnfsym = diff(f,x,i); % find the (i)th derivative: f'n(x)
    dnfasym = subs(dnfsym,x,aValue); % substitute x with aValue to evaluate f'n(a)
    C(1,i+1) = double(dnfasym)/factorial(i); % assign coefficients: [C_0,C_1,C_2,...,C_n]
    N(1,i+1) = (x-a)^i; % Create terms:[(x-a)^0,(x-a)^1,(x-a)^2,...(x-a)^n] 
    
end

TaylorEXP = matlabFunction(sum(C.*N)); % Combine terms and coefficient and put it into function
F = matlabFunction(f); % Turn the original function from 'sym' into function handle
Err = abs(F(xValue)-TaylorEXP(aValue,xValue)); % determine the absolute error

end