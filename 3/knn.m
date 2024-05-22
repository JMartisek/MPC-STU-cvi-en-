function [completeMap, probMap] = knn(k,map,data)
    probMap = zeros(size(map,1),size(map,2));
    completeMap = zeros(size(map,1),size(map,2));

        for i = 1:size(map,1)
            for j = 1:size(map,2)
                [map(j,i), probMap(j,i)] = NereastK(data, [i,j],k,1); % j -> y, number of row
            end
        end
        completeMap(:,:) = map;

end

