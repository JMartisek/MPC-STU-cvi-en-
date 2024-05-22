function [err] = CostFnc(x,y,theta)
    err = 0;
    for i = 1:size(x,1)
        err = ((theta(1)+theta(2)*x(i))- y(i))^2 + err;
    end
    err = err/size(x,1);
end

