%% Analog singals to digital signals Conversion (Edited)
% With visual display

%%

clear, clc, close all
format short
%%

x = linspace(0,5,1e5);  % Generate a row vector containing 10^5 evenly spaced points between 0 and 5
y = 1+x.^2;    % Set y = f(x) = 1 + x^2

nmax = 1e2;    % Maximun number of bin in the range of y value
y2 = zeros(nmax,length(y));   % size(y2) = [100, 100000]

n = 1;  % Loop start with 1 bin

tol = 0.1;      % Error Tolerance
maxErr = 100;   % Initialize the maximun error 

while maxErr > tol

    bin_size = (max(y)-min(y))/n;  % (f(5)-f(0)) divided by total number of bin

    for k = n:-1:1    % k value decreases by 1, start with n, end with 1
        a = max(y) - k*bin_size;
        b = y >= a;   % logical 1 = true; 0 = false
        y2(n,b) = max(y) - bin_size*(k-0.5);
    end

    Err = abs((y2(n,:)-y)./y);
    maxErr = max(Err);
    
    disp(['n = ',num2str(n),', Error percentage: ',num2str(max(Err)*100),'%'])

    n = n+1;          % add 1 more bin into next loop

    if n > nmax
        disp('The maximun number of bins is reached (n = 100), approximation stop.')
        break         % Terminate the loop if the accumulated bins exceed 100
    end

end

req_bins = n-1;       % Subtract 1 bin after loop ended
y2 = y2(1:req_bins,:);

%% Comparing the results of different number of bins (n)

figure(1)

subplot(2,2,1)
x = linspace(0,5,1e5);
Y1 = y2(1,:);
plot(x,Y1)
title('digital signals (n=1)')

subplot(2,2,2)
Y2 = y2(2,:);
plot(x,Y2)
title('digital signals (n=2)')

subplot(2,2,3)
Y3 = y2(3,:);
plot(x,Y3)
title('digital signals (n=3)')

subplot(2,2,4)
Y4 = y2(4,:);
plot(x,Y4)
title('digital signals (n=4)')

pause(2) % Pause 2 seconds for display

figure(2)

subplot(2,2,1)
x = linspace(0,5,1e5);
Y5 = y2(10,:);
plot(x,Y5)
title('digital signals (n=10)')

subplot(2,2,2)
Y6 = y2(50,:);
plot(x,Y6)
title('digital signals (n=50)')

subplot(2,2,3)
Y7 = y2(100,:);
plot(x,Y7)
title('digital signals (n=100)')

subplot(2,2,4)
Y8 = y;
plot(x,Y8,'r')
title('analog signals')

pause(2) % Pause 2 seconds for display

figure(3)
plot(x,y2(10,:),'b','LineWidth',0.9)
hold on % keep the current line on the open figure

plot(x,y,'r','LineWidth',0.9)

n=10;
for r = max(y)-(max(y)-min(y))/(n) : -(max(y)-min(y))/(n) : 0+(max(y)-min(y))/(n)
    yline(r,":")
    legend("off")
end

title('Digital signals of $f(x) = 1+x^2$ with 10 bins (n=10)','Interpreter','latex')
xlabel('$x$','Interpreter','latex')
ylabel('$f(x)$','Interpreter','latex')
legend('Digital signals','Analog signals','interpreter','latex')

pause(2) % Pause 2 seconds for display

figure(4)
plot(x,y2(20,:),'b','LineWidth',0.9)
hold on % keep the current line on the open figure

plot(x,y,'r','LineWidth',0.9)

n=20;
for r = max(y)-(max(y)-min(y))/(n) : -(max(y)-min(y))/(n) : 0+(max(y)-min(y))/(n)
    yline(r,":")
    legend("off")
end

title('Digital signals of $f(x) = 1+x^2$ with 20 bins (n=20)','Interpreter','latex')
xlabel('$x$','Interpreter','latex')
ylabel('$f(x)$','Interpreter','latex')
legend('Digital signals','Analog signals','interpreter','latex')

pause(2) % Pause 2 seconds for display

figure(5)
plot(x,y2(100,:),'b','LineWidth',0.05)
hold on % keep the current line on the open figure

plot(x,y,'r','LineWidth',0.05)

title('Digital signals of $f(x) = 1+x^2$ with 100 bins (n=100)','Interpreter','latex')
xlabel('$x$','Interpreter','latex')
ylabel('$f(x)$','Interpreter','latex')
legend('Digital signals','Analog signals','interpreter','latex')



%% Loop Test with number
disp('__________________________________________________________________________')
disp('Loop demonstration with number (for n=1, n=2 )')
disp('__________________________________________________________________________')
disp('n=1')
disp('bin_size=(f(5)-f(0))/n')
disp('        = (26 - 1)/1 = 25')
disp('k=1')
disp('a = f(5)-k*bin_size')
disp('  = 26 - 1*25 = 1')
disp('b=[1, 1, 1, 1, ... 1.1, 1.1, ... 25.99, 26] >= 1 % Ture for all entries')
disp('b=[1, 1, 1, 1, 1, .... 1] % Data type here is logical, not double')
disp('y2(n,b) = y2(1,[1, 1, ... 1]) = 26 - 25*(1-0.5) = 13.5')
disp('__________________________________________________________________________')
disp('n=2')
disp('bin_size=(f(5)-f(0))/n')
disp('        = (26 - 1)/2 = 12.5')
disp('k=2')
disp('a = f(5)-k*bin_size')
disp('  = 26 - 2*12.5 = 1')
disp('b=[1, 1, 1, 1, ... 1.1, 1.1, ... 25.99, 26] >= 1 % Ture for all entries')
disp('b=[1, 1, 1, 1, 1, .... 1] % Data type here is logical, not double')
disp('y2(n,b) = y2(2,[1, 1, ... 1]) = 26 - 12.5*(2-0.5) = 7.25')
disp('k=1')
disp('a = f(5)-k*bin_size')
disp('  = 26 - 1*12.5 = 13.5')
disp('b=[1, 1, 1, 1, ... 1.1, 1.1, ... 25.99, 26] >= 13.5 % Not ture for all entries')
disp('b=[0, 0, 0, ... 0, 1, 1, 1 ... 1] % Data type here is logical, not double')
disp('y2(n,b) = y2(2,[0, ... 0, 1, ... 1]) = 26 - 12.5*(1-0.5) = 19.75')
disp('__________________________________________________________________________')
disp('Check the value with figure 1 subplot n=1 & n=2')
