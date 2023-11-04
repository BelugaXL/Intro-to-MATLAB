% Useful MATLAB built-in functions for matrix operations 
clear, clc, close all
format compact
format short  
% format rational   % for displaying fraction

disp('MATLAB exclusive fearture: Element-wise operations')
disp('A=[1 2 3;4 5 6].*[0 0 0;0 0 0]')
A=[1 2 3;4 5 6].*[0 0 0;0 0 0];
disp(A)

disp('Normal matrix operations')
B=[1 2 3;4 5 6]*[1 1;1 1;1 1];
disp('B=[1 2 3;4 5 6].*[1 1;1 1;1 1];')
disp(B)

disp('Transpose a matrix')
disp('C=[1 2 3;4 5 6]')
C=[1 2 3;4 5 6];
disp(C)
disp("D=C'")
disp(C')

disp('Randomly generated 3 by 3 square matrix M, with entries in the range of 0 to 2')
disp('M=randi(2,3)')
M=randi(2,3);
disp(M)
disp('Create an 3 by 3 identity matrix')
disp('I=eye(3)')
I=eye(3);
disp(I)
disp('Generate the reduced row echelon form of matrix M')
disp('M0=rref(M)')
M0=rref(M);
disp(M0)
disp('Calculating the determinant of matrix M')
disp('M1=det(M)')
M1=det(M);
disp(M1)
disp('Generate the inveres matrix of M')
disp('M2=inv(M)')
M2=inv(M);
disp(M2)
disp('Finding the eigenvalues of matrix M')
disp('M3=eig(M)')
M3=eig(M);
disp(M3)
disp('Call out diagonal entries of matrix M')
disp('M4=diag(M).*I')
M4=diag(M).*I;
disp(M4)

%% Some Quick Linear Algebra Applicatons (Mat 242)

% Orthogonal Projection
% a=[14 17 12 -10];
% b=[1 -2 0 -2];
% c=[-16 -4 21 -4];
% u=[-6, -1, 6, 4];
% format rational
% p = (sum(a.*u)/sum(a.*a))*a + (sum(b.*u)/sum(b.*b))*b %  + (sum(c.*u)/sum(c.*c))*c

% Gram-Schmidt
% a=[14 17 12 -10];
% b=[1 -2 0 -2];
% c=[-16 -4 21 -4];
% s2=b-(sum(a.*b)/sum(a.*a))*a
% 1/sqrt(sum(a.*a))*a
% 1/sqrt(sum(s2.*s2))*s2
% s3=c-(sum(a.*c)/sum(a.*a))*a-(sum(s2.*c)/sum(s2.*s2))*s2
% 1/sqrt(sum(s3.*s3))*s3

% Least squares solution
% A=[5 -4 -4;-6 1 5;4 -7 4;-7 -1 6;-1 -2 -5]
% u=[-5 -1 6 -4 -5]'
% P = A*inv(A'*A)*(A'*u)
% xi = inv(A'*A)*(A'*u)

% Curve-Fitting
% A=[25 -5 1;4 -2 1;1 1 1;4 2 1];
% B=[-1 2 -1 2]';
% L=inv(A'*A)*(A'*B) % For ax^2 + bx + c
% x=linspace(-10,10,1e5);
% y=L(1,1)*x.^2+L(2,1)*x+L(3,1); 
% s=[-5 -2 1 2];
% t=[-1 2 -1 2];
% plot(x,y,s,t)
 
% A1=A(:,1:2)
% L=inv(A1'*A1)*(A1'*B) % For ax^2 + bx 
% A2=A(:,[1 3])
% L=inv(A2'*A2)*(A2'*B) % For ax^2 + c

% A=[8 1;7 1;7 1;4 1;1 1];
% B=[10 9 5 4 3]';
% L=inv(A'*A)*(A'*B)
% x=linspace(-10,10,1e5);
% y=L(1,1)*x+L(2,1);
% s=[8 7 7 4 1];
% p=[10 9 5 4 3];
% figure(1)
% plot(x,y,s,p)
 
% A=[64 8 1;49 7 1;49 7 1;16 4 1;1 1 1];
% B=[10 9 5 4 3]';
% L=inv(A'*A)*(A'*B)
% x=linspace(-10,10,1e5);
% y=L(1,1)*x.*x+L(2,1)*x+L(3,1);
% s=[8 7 7 4 1];
% p=[10 9 5 4 3];
% figure(2)
% plot(x,y,s,p)
 
% A=[64 8;49 7;49 7;16 4;1 1];
% B=[10 9 5 4 3]';
% L=inv(A'*A)*(A'*B)
% x=linspace(-10,10,1e5);
% y=L(1,1)*x.*x+L(2,1)*x;
% s=[8 7 7 4 1];
% p=[10 9 5 4 3];
% figure(3)
% plot(x,y,s,p)
 
% A=[64 1;49 1;49 1;16 1;1 1];
% B=[10 9 5 4 3]';
% L=inv(A'*A)*(A'*B)
% x=linspace(-10,10,1e5);
% y=L(1,1)*x.*x+L(2,1);
% s=[8 7 7 4 1];
% p=[10 9 5 4 3];
% figure(4)
% plot(x,y,s,p)
 
% A=[1/8 1 8;1/7 -1 7;1/7 -1 7;1/4 1 4;1 -1 1];
% B=[10 9 5 4 3]';
% L=inv(A'*A)*(A'*B)
% x=linspace(0,9,1e2);
% y=L(1,1)./x+L(2,1)*cos(pi*x)+L(3,1)*x;
% s=[8 7 7 4 1];
% p=[10 9 5 4 3];
% figure(5)
% plot(x,y,s,p)


%% MAT 266 WeBWork 9.3 9.4
% syms theta
% % Q.13
% r=10*(1+cos(theta));
% A=1/2*int(r^2,theta,0,2*pi)
% % Q.14
% A=1/2*int(36*cos(2*theta),theta,-pi/4,pi/4)
% % Q.15
% A=1/2*int((4*sin(4*theta))^2,theta,0,pi/4)
% % Q.16
% A=1/2*int((9*cos(theta)-6)^2,theta,deg2rad(-acosd(6/9)),deg2rad(acosd(6/9)));
% A=eval(A)
% % Q.17
% A=1/2*int((81*(sin(theta))^2 - 9),theta,asin(3/9),pi-asin(3/9));
% eval(A)
% % Q.18
% r = 3*sin(theta);
% dr = diff(r);
% L = int(sqrt(r^2 + dr^2),theta,0,pi/3);
% double(L)
% % Q.19
% A=1/2*int(((30*sin(theta))^2-(10 + 10*sin(theta))^2),theta,pi/6,5*pi/6);
% eval(A)







