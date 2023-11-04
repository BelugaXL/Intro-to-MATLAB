%% Calculates Center of Mass for Particles with User-defined Function: MassCenterSUM

clear, clc, close all
M = readmatrix('MassData1.xlsx'); % Import data with Excel file and turn it into a matrix
M = rmmissing(M,1); % remove non number parts of data
xi = M(:,1); % Seperate the matrix into column sets 
yi = M(:,2);
zi = M(:,3);
mi = M(:,4);

[COM] = MassCenterSUM(xi,yi,zi,mi); % Run the function and test with different number input variables
sprintf('The center of mass is at x = %+.3f, y = %+.3f, z = %+.3f',COM(1,1),COM(1,2),COM(1,3))
[COM] = MassCenterSUM(xi,yi,mi);
sprintf('The center of mass is at x = %+.3f, y = %+.3f',COM(1,1),COM(1,2))
[COM] = MassCenterSUM(xi,mi);
sprintf('The center of mass is at x = %+.3f',COM(1,1))
[COM] = MassCenterSUM(mi);
sprintf(COM)


