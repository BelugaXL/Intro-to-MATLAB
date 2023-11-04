%% Sequence to SQRT(2) & Error Tolerance
% The sequence converges on sqrt(2) as N increases

%% Task:
% 1st Output: the value of the the last term
% 2nd Output: the number of terms needed to meet the specified error tolerance

% break the while loop if the number of terms needed to converge to 
% the user-specified error tolerance exceeds 10 
% (this sequence converges really fast, hence the small upper limit 
% on the number of terms). When this happens, 
% set both the first and second output of the function to 0

%% Code
function [EndTermValue, TermsCount] = sqrt2approx(Epsilon)

relErr = 1;              % initialize error
tol = Epsilon;           % define error tolerance
maxTerms = 10;           % set maximum number of terms
Terms = 2;               % initialize number of terms
P = zeros(1,maxTerms);   % preallocate sum vector
P(1) = 1;                % set first term to 1
count = 2;               % initialize loop counter
while relErr >= tol
    % check number of tems
    if Terms > maxTerms
        EndTermValue = 0;
        TermsCount = 0;
        break % break loop if above max number of terms
    end
    % increase value of sum
    P(count) = 0.5*(P(count-1) + (2/P(count-1)));
    % update error
    relErr = abs((sqrt(2)-P(count))/sqrt(2));
    EndTermValue = P(count);
    TermsCount = count;
    count = count + 1;  % increase count by 1
    Terms = Terms + 1;  % increase Terms by 1 
    
end

end

%% For command window
% [A, B] = sqrt2approx(1e-5)
