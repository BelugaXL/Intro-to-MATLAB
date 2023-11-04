%% Surface Waves (Bessel's Function)
% Write a script to find the location of the first N extrema for surface waves 
% in a cylindrical container using Bessel functions and the MATLAB function besselj and fzero

% Store both the locations of the extrema and and the corresponding values of J_0

%%
clear all

N = 1 + randi(15); % define number of zeros to be found, [1 16] 
r = zeros(N,2); % preallocate r vector

% Define the function handles.
bessel0 = @(x) besselj(0,x);
bessel1 = @(x) besselj(1,x);

% Set the arguments for FZERO.
options = optimset('Display','none','TolX',1e-8);

% Develop iterative scheme for finding first N zeros of J0
j=0;
for i=1:1:N  
    r(i,1) = fzero(bessel1,j,options);
    r(i,2) = bessel0(r(i,1));
    j=r(i,1)+3;
end
disp(r)

%%%%%%%%%%%  Plot the function and the extrema %%%%%%%%%%.
% Define the x values.
x = 0:0.1:30; % use this range when you are trying to get a sense of the problem
% x = 0:0.1:r(N,1); % use this range when you want to see all your zeros make figure
figure; hold on; grid on;
plot(x,bessel0(x),'k')
plot(x,bessel1(x),'Color',[0.6350 0.0780 0.1840])
plot(r(:,1),r(:,2),'o','Color',[0 0.4470 0.7410])
plot(r(:,1),0*r(:,1),'x','Color',[0.4660 0.6740 0.1880])
axis([0 max(x) -1 1]);
legend('Bessel J of Order Zero','Bessel J of Order One','Extrema of Order Zero','Zeros of Order One')
