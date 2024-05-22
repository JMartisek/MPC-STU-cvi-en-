function [error] = errorFunction(data, pivots,iteration)
    error = 0;
    p = 3;
    for i = 1:size(data,1)
        error = error +(sqrt((data(i,1)-pivots(data(i,3),1))^2 +(data(i,2)-pivots(data(i,3),2))^2));
        %error = error + (((data(i,1)-pivots(data(i,3),1))^2 +(data(i,2)-pivots(data(i,3),2))^2))^(p);
    end
    error = error/size(data,1);
    %error = error^(1/p);
    disp("Iteration " + iteration);
    disp(error);

end

