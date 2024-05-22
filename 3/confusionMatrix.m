function [TPR,FPR] = confusionMatrix(Input,Output)
TruePositive = 0;
FalsePositive = 0;
TrueNegative = 0;
FalseNegative = 0;

allTrue = 49;
allFalse = 51;
for i = 1:1:size(Input,1)
    if Input(i,3) == Output(Input(i,2),Input(i,1)) && Input(i,3) == 1
        TruePositive = TruePositive +1;
    elseif Input(i,3) == Output(Input(i,2),Input(i,1)) && Input(i,3) == 2
        TrueNegative = TrueNegative +1;
    elseif Input(i,3) ~= Output(Input(i,2),Input(i,1)) && Input(i,3) == 2
        FalseNegative = FalseNegative +1;
    else
        FalsePositive = FalsePositive +1;
    end

end
T = TruePositive + TrueNegative;
F = FalsePositive + FalseNegative;
Acc = T/(F+T);
PPV = TruePositive/(TruePositive+FalsePositive);
TPR = TruePositive/(TruePositive+FalseNegative);
FPR = FalsePositive/(FalsePositive+TrueNegative);
F = (2*TruePositive)/(TruePositive + FalsePositive + TruePositive + FalsePositive);
PPV = TruePositive/(TruePositive + FalsePositive);
TPR(isnan(TPR)) =1;
FPR(isnan(FPR)) =1;
%disp("True positive:" + TruePositive)
%disp("True negative:" + TrueNegative)
%disp("False positive:" + FalsePositive)
%disp("False negative:" + FalseNegative)
end
