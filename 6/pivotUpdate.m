function [nPivots] = pivotUpdate(data)
    K = max(data(:,3));
    counter = zeros(K,1);
    nPivots = zeros(K,2);
    for i = 1:size(data,1)
        nPivots(data(i,3),1) = nPivots(data(i,3),1) +data(i,1);
        nPivots(data(i,3),2) = nPivots(data(i,3),2) + data(i,2);
        counter(data(i,3)) = counter(data(i,3)) + 1;
    end
    for j = 1:K
        if counter(j) ~= 0
            nPivots(j,1) = nPivots(j,1)/counter(j);
            nPivots(j,2) = nPivots(j,2)/counter(j);
        end
    end

end

