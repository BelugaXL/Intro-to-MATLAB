%% HW5 - Grading Scheme
% This script analysis a set of scores 
% The matrix G holds the student grades
% Each row represents one of the grading bins (HW; Exams; Labs; Final Project)
% Each column represents a single student's scores in all 4 bins

%% Clear variables, command window, and close open figures.

clear, clc, close all

format short
%% Define unwedighted grades and bin weighting
G = randi(100,4,50);        % random distribution of unweighted scores between 1 and 100
w = [0.15 0.5 0.2 0.15];    % grade bin weighting

%% Create a column vector storing the maximum unweighted grade in each bin
% MAX[H;E;L;F]
MAX1 = max(G,[],2);

%% Create a column vector storing the minimum unweighted grade in each bin
% MIN[H;E;L;F]
MIN1 = min(G,[],2);
% A1 = [max(G(1,:));max(G(2,:));max(G(3,:));max(G(4,:))]

%% Create a row vector storing the maximum unweighted score across all bins for each student
% MAX[St.1 to St.50]
MAX2 = max(G,[],1);
% A2 = [min(G(1,:));min(G(2,:));min(G(3,:));min(G(4,:))]

%% Create a row vector storing the minimum unweighted score across all bins for each student
% MIN[St.1 to St.50]
MIN2 = min(G,[],1);

%% Calacuate weighted student grades
w = w';
W = w.*G;
%% create a row vector where each column represents a student's total percentage
grades = sum(W,1);

%% Determine the maximum & the minimun weighted grade in the course among all the students

maxGrade = max(grades);
minGrade = min(grades);
