function [trainData,ValidationData] = dataSubset(data,K,testNumber)
% validation a traindata naopak nazvy
sizeOfSubdata = int32(size(data,1)/K);
subData = zeros(sizeOfSubdata,K);
j = 1;
counter = 1;
for i = 1:size(data,1)
    if sizeOfSubdata < counter
        j = j +1;
        counter = 1;
    end
    subData(counter,j) = i;
    counter = counter +1;

end

trainData = subData(:,testNumber);
ValidationData = 0;
for k = 1:size(subData,2)
    if k ~= testNumber
        ValidationData = [ValidationData;subData(:,k)];

    end


end

ValidationData = ValidationData(2:end,1);
ValidationData = index2value(ValidationData,data);
trainData = index2value(trainData,data);

end
function [values] = index2value(indexes,data)
    values = zeros(size(indexes,1),3);
    for l = 1:size(indexes,1)
        values(l,1) = data(indexes(l,1),1);
        values(l,2) = data(indexes(l,1),2);
        values(l,3) = data(indexes(l,1),3);

    end
end