%% HW9_Basic_Descriptive_Statistics

clear, clc, close all
format short

load examScores.dat % load data

disp(examScores')

histogram(examScores) % visualize data
xlabel('Scores'); ylabel('Number of students'); title('Exam Scores');

meanScore = mean(examScores);
disp(['The average score is ',num2str(meanScore)])
medianScore = median(examScores);
disp(['The median score is ',num2str(medianScore)])
maxScore = max(examScores);
disp(['The higtest score is ',num2str(maxScore)])
stanDevScores = std(examScores);
disp(['The standard deviation is ',num2str(stanDevScores)])