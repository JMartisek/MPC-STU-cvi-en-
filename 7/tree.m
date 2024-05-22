function [err] = tree(J,testData)
    err = zeros(100,1);
    for i = 1:100
        err(i) = errFunc(J(i,:),testData);
    
    end

end

