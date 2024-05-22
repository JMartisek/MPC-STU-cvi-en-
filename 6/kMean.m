function [data] = kMean(data,K)
    pivots = zeros(K,2);
    pivots(1,:) = [data(1,1), data(1,2)];
    pivots(2,:) = [data(101,1), data(101,2)];
    pivots(3,:) = [data(201,1), data(201,2)];
    pDistances = zeros(K,1);
    newError = 1;
    oldError = 0;
    p = 3;
    iterationCounter =1;
    while(abs(newError - oldError) > 0.0001)
        oldError = newError;
        for i = 1:size(data,1)
            for j = 1:size(pivots,1)
                pDistances(j) = sqrt((pivots(j,1)-data(i,1))^2+(pivots(j,2)-data(i,2))^2);
                %pDistances(j) = (abs((pivots(j,1)-data(i,1)))+abs((pivots(j,2)-data(i,2))));  
            end
            [~, index] = min(pDistances);
            data(i,3) = index;
        end
        newError = errorFunction(data,pivots,iterationCounter);
        % if newError > oldError
        %     break;
        % end
        iterationCounter = iterationCounter +1;
        pivots = pivotUpdate(data)
    end
    data = sortrows(data,3);
    data = divideData(data,K);
end
