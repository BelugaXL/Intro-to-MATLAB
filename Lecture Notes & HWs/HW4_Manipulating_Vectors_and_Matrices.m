%% HW4 - Manipulating Vectors and Matrices
% This script performs a series of short tasks for praticing vector & matrix manipulation

%% Clear variables, command window, and close open figures.

clear, clc, close all

%% Part (a) 
% Create the matrix shown below and store it to a variable called Mat1
%     _                           _
%    |     1        3        5     |
%    |                             |
%    |    -10      -8       -6     |
%    |                             |
%    |_ sin(pi/2)   5^3    e^(-2) _|
% 

Mat1 = [1 3 5;-10 -8 -6;sin(pi/2) 5^3 exp(-2)];
format short % (short, shortEng, long)
disp('Part (a)')
disp(Mat1)

%% Part (b) 
% Divide each element of Mat1 by tan(6pi/7)
% Store the answer to a variable named A

A = Mat1/(tan(6*pi/7));
disp('Part (b)')
disp(A)

%% Part (c) 
% Add 4 to each element in the first row of Mat1; 
% subtract 1 from each element in the second row of Mat1; 
% keep the third row as-is

% Create a column vector for adding to Mat1 to perform this task
% Call the column vector B

B = [4;-1;0];
disp('Part (c)')
disp(B)

%% Part (d)
% Add B to Mat1 and store the answer to a new variable called D

D = B + Mat1;
disp('Part (d)')
disp(D)

%% Part (e)
% Create a column vector from the second column of D
% Store the answer to a variable named E

E = D(:,2);
disp('Part (e)')
disp(E)

%% Part (f)
% Create a a row vector from the third row of D
% Store the answer to a variable named F.

F = D(3,:);
disp('Part (f)')
disp(F)


%% Part (g)
% Create a 2x2 matrix from the first two columns, and second and third rows of D
% Store the answer to a variable named G

G = D(2:3,1:2);
disp('Part (g)')
disp(G)

%% Part (h)
% Create a new variable called H that has the same first colum as G, BUT:
% 1. Replace the element in the second column, first row of G; 
% with the element in the second colum, second row of Mat1
% 2. Replace the element in the second row, second column of G;
% with the element in the first colum, third row of Mat1.

H = G;
H(1,2) = Mat1(2,2); % X(row,col)
H(2,2) = Mat1(3,1);
disp('Part (h)')
disp(H)
