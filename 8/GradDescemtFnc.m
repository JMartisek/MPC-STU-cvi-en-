function [cost,theta, cost2, theta2] = GradDescemtFnc(x,y,theta, iterations, alpha)
    cost = zeros(iterations,1);
    cost2 = zeros(iterations,1);
    theta2 = theta;
    for g = 1:iterations
        
        for j = 1:size(theta,2)
            err = 0;
            err2 = 0;
            for i = 1:size(x,1)
                err = ((theta(1) + theta(2)*x(i))-y(i))*x(i)^(j-1) + err;
                err2 = ((theta(1) + theta(2)*x(i))-y(i)) + err2;%
            end
            err = (err/size(x,1))* alpha;
            err2 = (err2/size(x,1))* alpha;
            theta(j) = theta(j) - err;
            theta2(j) = theta2(j) - err2;
            if mod(g,100) == 0
                value = theta(1) + theta(2)*x(:);
                plot(x,value)
                hold on
            end

        end
        cost(g) = CostFnc(x,y,theta);
        cost2(g) = CostFnc(x,y,theta2);
    end
end

