function [prob] = pickFromMap(data,probs)
    prob = zeros(size(data,1),1);
    for i = 1:size(data,1)
        prob(i) = probs(data(i,2),data(i,1));

    end
end

