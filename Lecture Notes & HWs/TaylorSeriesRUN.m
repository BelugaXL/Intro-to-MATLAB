%% Generate Taylor Series With User-defined Function: TaylorSeriesFUN

clear, clc, close all
format rational % For dispalying fraction
format compact

syms x
f = log(x); % Define a function symbolically
aValue = 2;
n = 5;
xValue = 1;

disp('Note: TaylorEXP(aValue,xValue) The function inputs must be aValue first then xValue')
disp(['List of the coefficients from C_0 to C_',num2str(n)])

[C,TaylorEXP,Err] = TaylorSeriesFUN(f,aValue,n,xValue) % Call out the function

fprintf('The absolute error is %f\n',double(Err))

% Plot the function and the taylor polynomial
figure(1)
fplot(f,'b')
hold on
s=linspace(0,5,1e5); % range might vary from different function
t=TaylorEXP(aValue,s);
ylim([-2,4])
grid on
plot(s,t,'r')
title('Taylor polynomial','Interpreter','latex')
xlabel('$x$','Interpreter','latex')
ylabel('$y$','Interpreter','latex')
legend('$y=ln(x)$','$y=P_5(x)$','interpreter','latex')

