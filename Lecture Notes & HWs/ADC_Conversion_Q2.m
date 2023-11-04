%% A2D_Conversion.m

%%

clear, clc, close all

%%

x = linspace(0,5,1e5);
y = 1+x.^2;

nmax = 1e2;
y2 = zeros(nmax,length(y));

n = 1;

tol = 0.1;
maxErr = 100;

while maxErr > tol

    bin_size = (max(y)-min(y))/n;

    for k = n:-1:1
        a = max(y) - k*bin_size;
        b = y >= a;
        y2(n,b) = max(y) - bin_size*(k-0.5);
    end

    Err = abs((y2(n,:)-y)./y);
    maxErr = max(Err);

    n = n+1;

    if n > nmax
        break
    end

end

req_bins = n-1;
y2 = y2(1:req_bins,:);