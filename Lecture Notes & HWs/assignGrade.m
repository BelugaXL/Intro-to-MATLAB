%% Grade Assignment (simple if-elseif-else)
% Score values ranging from 90 to 100 receive an A.
% Score values ranging from 80 to 89 receive a B.
% Score values ranging from 70 to 79 receive a C.
% Score values ranging from 60 to 69 receive a D.
% Score values ranging from 0 to 59 receive an F.
%% Code

function grade = assignGrade(score)

if (score>=90) && (score<=100)
    grade = 'A';
elseif (score>=80) && (score<=89)
    grade = 'B';
elseif (score>=70) && (score<=79)
    grade = 'C'; 
elseif (score>=60) && (score<=69)
    grade = 'D';
else
    grade = 'F';
end

end

%% For command window (Copy and paste line by line)
% prompt = 'Enter a score';
% score = input(prompt);
% grade = assignGrade(score)