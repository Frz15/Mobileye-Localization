function [LanePoint] = createLanePoint(C3, C2, C1, C0)
%
%

x_range = 120;

LanePoint = zeros(x_range,2);

x = 0:x_range-1;
y = C3*x.^3 + C2*x.^2 + C1*x + C0;

LanePoint(:,1) = y;
LanePoint(:,2) = x;

end