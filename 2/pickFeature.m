function [feature] = pickFeature(HSA)
    iterations = size(HSA,2);
    value = 10.0;
    for i = 1:iterations
        if HSA(i) < value
            feature = i;
            value = HSA(i);
        end
    end
end