function [Distance] = euklidDistance(point1,point2)
    x = point1(1) - point2(1);
    y = point1(2) - point2(2);

    Distance = sqrt(x^2+y^2);
end

