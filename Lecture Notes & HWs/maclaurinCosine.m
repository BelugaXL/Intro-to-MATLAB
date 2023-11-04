%% MacLaurin Series for Cosine (loop and vectors)
% The cosine function can be approximated by a Maclaurin series expansion

%% Task:
% 1st Output: a column vector of the first N series terms
% 2nd Output: a column vector of the first N series summations

%% Code
function [terms, seriesSums] = maclaurinCosine(x, N)

terms = [];
terms(1,1) = 1;
seriesSums = [];
seriesSums(1,1) = 1;

for k = 2:1:N
    terms(k,1) = ((-1)^(k-1))*(x^(2*(k-1))/factorial(2*(k-1)));
    seriesSums(k,1) = sum(terms);
end

end

%% For command window
% [terms, seriesSums] = maclaurinCosine(pi/3, 5)