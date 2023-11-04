%% Sequence to SQRT(2) (for loop and vector generation)
% The sequence converges on sqrt(2) as N increases

%% Task:
% 1st Output: a row vector containing the first N terms of the sequence
% 2nd Outpot: a scalar variable that is the relative error
%% Code
function [terms, relError] = sequenceToSqrt2(N)

terms = [];
terms(1) = 1;

for k = 2:1:N
    terms(k) = 0.5*(terms(k-1)+2/terms(k-1));
end

relError = abs((sqrt(2)-terms(N))/sqrt(2));

end 

%% For command window
% [terms, relError] = sequenceToSqrt2(5)