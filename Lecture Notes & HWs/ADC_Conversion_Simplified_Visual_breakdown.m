%% Simplified ADC Conversion (Visualization & Breakdown)

%%
clear, clc, close all
format short
%%

x = linspace(0,5,1000);
y = 1+x.^2;    % y = f(x) = 1 + x^2

nmax = 10;     % Maximun number of bin in the range of y value
y2 = zeros(nmax,length(y));   % size(y2) = [10, 1000]

n = 1;  % Outer for loop start with 1 bin


for i=1:1:10  % i value increases by 1, start with 1, end with 10

    bin_size = (max(y)-min(y))/n;  % (f(5)-f(0)) divided by total number of bin

    for k = n:-1:1    % k value decreases by 1, start with n, end with 1
        a = max(y) - k*bin_size;
        b = y >= a;   % logical 1 = true; 0 = false
        y2(n,b) = max(y) - bin_size*(k-0.5);
        plot(x,y2(n,:),'b','LineWidth',1);
        grid on       % Add grid line on the figure
        pause(0.1);   % Take 0.2 seconds time break 
    end

    Err = abs((y2(n,:)-y)./y)*100;
    disp(['n = ',num2str(n),', Error percentage: ',num2str(max(Err)),'%'])

    n = n+1;          % add 1 more bin into next loop

end

%% Comparing the results of different number of bins (n)

figure(2)

subplot(2,2,1)
x = linspace(0,5,1e3);
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

figure(3)

subplot(2,2,1)
x = linspace(0,5,1e3);
Y5 = y2(5,:);
plot(x,Y5)
hold on % keep the current line on the open figure
n=5;
for r = max(y)-(max(y)-min(y))/(n) : -(max(y)-min(y))/(n) : 0+(max(y)-min(y))/(n)
    yline(r,":")
end
title('digital signals (n=5)')

subplot(2,2,2)
Y6 = y2(8,:);
plot(x,Y6)
hold on
n=8;
for r = max(y)-(max(y)-min(y))/(n) : -(max(y)-min(y))/(n) : 0+(max(y)-min(y))/(n)
    yline(r,":")
end
title('digital signals (n=8)')

subplot(2,2,3)
Y7 = y2(10,:);
plot(x,Y7)
hold on
n=10;
for r = max(y)-(max(y)-min(y))/(n) : -(max(y)-min(y))/(n) : 0+(max(y)-min(y))/(n)
    yline(r,":")
end
title('digital signals (n=10)')

subplot(2,2,4)
Y8 = y;
plot(x,Y8,'r')
title('analog signals')

pause(2) % Pause 2 seconds for display

figure(4)
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

%% line 22, 23 Explanation
disp('______________________________________________________')
disp('line 22, 23 Explanation')
disp('line 22 : b = y >= a')
disp('line 23 : y2(n,b) = max(y) - bin_size*(k-0.5)')
t=1:10;
disp('t=1:10')
disp(t)
t2=t>4;
disp('t2=t>4')
disp(t2)
t(t2)=6;
disp('t(t2)=6')
disp(t)