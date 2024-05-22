function [errCV allErrors] = err_CV(data,K)

    map = zeros(100,100);
    tError = zeros(K,1);
    for i = 1:K
        [ValidationData, trainData] = dataSubset(data,K,i);
        [output, ~] = knn(3,map,trainData);
        [~,~] = confusionMatrix(data,output);
        tError(i) = err_train(ValidationData,output);
    end
    errCV = sum(tError)/K;
    allErrors = tError;
end

