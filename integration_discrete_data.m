function I = integration_discrete_data(x,y)
% This function computes the integration of discrete data points.
% x: x-coordinates of the discrete data points.
% y: y-coordinates of the discrete data points.
% I: integration result.
if length(x) == 1
    I = 0 ;
else
    I = sum(diff(x).*(y(1:end-1)+y(2:end))/2) ;
    
end

