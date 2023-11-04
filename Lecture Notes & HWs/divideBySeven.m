%% Basic While Loop
% The function repeatedly divide a given number by 7 
% until the value remaining is less than 1

%% Task:
% 1st Output: the final value of the number
% 2nd Output: count the number of divisions

%% Code
function [whatsLeft, divisionCount] = divideBySeven(number)

whatsLeft = number;
divisionCount = 0;
while whatsLeft >= 1
    divisionCount = divisionCount + 1;
    whatsLeft = whatsLeft/7;
end

%% For command window
% [whatsLeft, divisionCount] = divideBySeven(256)