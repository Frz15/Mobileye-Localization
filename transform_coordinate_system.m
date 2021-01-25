function [pointAfterTransform] = transform_coordinate_system(originPoint, attitudeAngle, pointToTransform)
%
% originPoint 原点
% 

num_point = size(pointToTransform,2);

transformMatrix = [sin(attitudeAngle) cos(attitudeAngle);
                   cos(attitudeAngle) -sin(attitudeAngle)];

pointAfterTransform = pointToTransform * transformMatrix - originPoint * ones(num_point,2);

end

