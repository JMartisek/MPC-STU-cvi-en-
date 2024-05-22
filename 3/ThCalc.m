function [output] = ThCalc(values,Threshold)
    average = sum(values)/size(values,2)-1;
    if average <= Threshold/10
        output = 1;
    else
        output = 2;
    end
end

