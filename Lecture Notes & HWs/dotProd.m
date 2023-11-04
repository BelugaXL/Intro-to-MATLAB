%% Dot Product

%% Code
function out = dotProd(a,b)

N = size(a);
out = 0;

if size(a) == size(b)   
    for k = 1:1:N(1,2)
        out = out + (a(k)*b(k));
    end
else
    out = 0;
end

end

%% For command window
% A = [1 2 3];
% B = [4 5 6];
% dotProd(A,B)