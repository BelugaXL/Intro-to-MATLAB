function [COM] = MassCenterSUM(varargin)
% This function calculates center of mass for particles
% Input: ex. 4 column sets containing xi,yi,zi coordinates, and masses mi
% Output: A coordinate of the center of mass in a row vector.

% This function accepts different number of input variables for solving a
% task in one, two, and three dimensions.
% Whatever number of variables are taken, the order has to be xi,yi,zi,mi

if nargin == 4   % Determine number of input variables 
    xi = varargin{1}; % Assign variables 
    yi = varargin{2};
    zi = varargin{3};
    mi = varargin{4};
    Cx = sum(xi.*mi)/sum(mi); % Apply the formula
    Cy = sum(yi.*mi)/sum(mi);
    Cz = sum(zi.*mi)/sum(mi);
    COM = [Cx,Cy,Cz];

    fig = figure(1);
    movegui(fig,'northeast'); % Top right corner
    stem3(xi,yi,zi,'b')    % Display particles
    hold on
    stem3(Cx,Cy,Cz,'MarkerFaceColor','r')    % Display center of mass; mark red
    xlabel('X'); % Add labels, title, and legend
    ylabel('Y');
    zlabel('Z');
    title('Masses Distribution & Center of Mass');
    legend('Masses Distribution','Center of Mass');
    
elseif nargin == 3
    xi = varargin{1};
    yi = varargin{2};
    mi = varargin{3};
    Cx = sum(xi.*mi)/sum(mi);
    Cy = sum(yi.*mi)/sum(mi);
    COM = [Cx,Cy];

    fig = figure(2);
    movegui(fig,'east'); % Right center
    stem3(xi,yi,zeros(1,size(mi,1)),'b') % Assign zeros into zi
    hold on
    stem3(Cx,Cy,0,'MarkerFaceColor','r')
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    title('Masses Distribution & Center of Mass');
    legend('Masses Distribution','Center of Mass');

elseif nargin == 2
    xi = varargin{1};
    mi = varargin{2};
    Cx = sum(xi.*mi)/sum(mi);
    COM = Cx;

    fig = figure(3);
    movegui(fig,'southeast'); % Bottom right corner
    stem3(xi,zeros(1,size(mi,1)),zeros(1,size(mi,1)),'b') % Assign zeros into yi and zi
    hold on
    stem3(Cx,0,0,'MarkerFaceColor','r')
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    title('Masses Distribution & Center of Mass');
    legend('Masses Distribution','Center of Mass');

else
    COM = 'Error'; % Display 'Error' when number of varables out of range.
    % disp('The number of input varables is out of range.')
    % error('The number of input varables is out of range.')

end