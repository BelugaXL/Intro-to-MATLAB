% Approximating the Area Under a Curve Using the Midpoint Method
%
% a, the left interval endpoint
% b, the right interval endpoint
% n, the number of rectangles
% f, a handle to a numeric MATLAB function--f here is an anonymous function

function Appx = midpoint(a,b,n,f)
Deltax = (b-a)/n;
midpoints = linspace(a+((b-a)/(2*n)),b-((b-a)/(2*n)),n);
heights = f(midpoints);
areas = Deltax*heights;
Appx = sum(areas);
end

% For command window
% f = @(x)x.^2;
% Appx = midpoint(0,1,10,f)
% Appx = midpoint(0,1,100,f)
% Appx = midpoint(0,1,1000,f)