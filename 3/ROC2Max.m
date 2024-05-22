function [TPR,FPR] = ROC2Max(data, prob)
        thresholds = linspace(0, 1, 100);
        TPR = zeros(size(thresholds));
        FPR = zeros(size(thresholds));
        prob1 = pickFromMap(data,prob)';
        y_test = data(:,3);
        y_test(y_test == 2) = 0;
        y_test = reshape(y_test,1,[]);


    for i = 1:length(thresholds)
        threshold = thresholds(i);
        predicted_labels = (prob1 >= threshold); 
        TP = sum(predicted_labels & y_test); 
        FP = sum(predicted_labels & ~y_test); 
        TN = sum(~predicted_labels & ~y_test); 
        FN = sum(~predicted_labels & y_test); 
        TPR(i) = TP / (TP + FN); 
        FPR(i) = FP / (FP + TN); 
    end
    


end

