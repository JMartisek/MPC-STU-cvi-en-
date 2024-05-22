function [ValueOfPoint, probability] = NereastK(ListOfPoints,point,k,Threshold)
    Distances = [size(ListOfPoints)];
    for i = 1:size(ListOfPoints,1)
        Distances(i) = euklidDistance([ListOfPoints(i,1),ListOfPoints(i,2)],[point(1),point(2)]);
    end

    sortedDistances = sort(Distances);
    for j = 1:k
        index = find(Distances == sortedDistances(j));
        values(j) = ListOfPoints(index(1),3);
    end
    
     ValueOfPoint = ThCalc(values,Threshold);
     probability = 1 -(sum(values)/k-1); % pravdepodobnost na 1
end

