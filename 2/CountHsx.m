function [Hsa] = CountHsx(data, output)
    positiveCount = 0;
    negativeCount = 0;
    dataSize = size(data,1);
    for i = 1:dataSize
        if data(i) == 1 && data(i) == output(i)
            positiveCount = positiveCount +1;
        elseif data(i) == 0 && data(i) == output(i)
            negativeCount = negativeCount +1;
        end
    end
    [posNum, negNum] = divideNums(data);
    Hsxp = -((positiveCount/posNum)*log2(positiveCount/posNum)+(posNum -positiveCount)/posNum*log2((posNum -positiveCount)/posNum));
    Hsxn = -((negativeCount/negNum)*log2(negativeCount/negNum)+(negNum -negativeCount)/negNum*log2((negNum -negativeCount)/negNum));
    if isnan(Hsxp)
        Hsxp = 0;
    end
    if isnan(Hsxn)
        Hsxn = 0;
    end
    Hsa = posNum/(posNum + negNum)*Hsxp + negNum/(posNum + negNum)*Hsxn;
    if Hsxp == 0  && Hsxn == 0
        
        display("positive: "+positiveCount + " negative: " + negativeCount)
        if negativeCount == 0 && positiveCount == 0
            Hsa = 0.1;
        elseif negativeCount * positiveCount ~= 0
            Hsa = 0.1;
        end
    end
end


function [pos, neg] = divideNums(data)
    pos = 0; 
    neg = 0;
    for i = 1: length(data(:,1))
        if (data(i,1)) == 1
            pos = pos +1;
        else
            neg = neg +1;
        end
    end
    
end

