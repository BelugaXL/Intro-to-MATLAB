%% Number Range Checker
% Check if the value is between 0 and 10 
% (consider values of exactly 0 and exactly 10 to be in range)

%% Code

function CheckRange = numberChecker(RandomNumber)

if (RandomNumber>=0) && (RandomNumber<=10)
    CheckRange = 'The number is in range.';
else
    CheckRange = 'The number is out of range.';
end

end

%% For command window
% format short
% RandomNumberIn = 1 + 15*rand(1,1) %creates random number to test function
% CheckRangeOut = numberChecker(RandomNumberIn)